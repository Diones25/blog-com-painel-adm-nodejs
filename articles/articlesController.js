const express = require("express");
const router = express.Router();
const Category = require("../categories/Category");
const Article = require("./Articles");
const slugify = require("slugify");
const adminAuth = require("../middleware/adminAuth");

router.get("/admin/articles", adminAuth,(req, res) =>{
    Article.findAll( {include: [{model: Category}]} ).then(articles => {
        res.render("admin/articles/index", {articles: articles});
    });
});

router.get("/admin/articles/new", adminAuth,(req, res) =>{
    Category.findAll().then(categories => {
        res.render("admin/articles/new", {categories: categories});
    });
});

router.post("/articles/save", adminAuth,(req, res) => {
    let title = req.body.title;
    let body = req.body.body;
    let category = req.body.category;

    Article.create({
        title: title,
        slug: slugify(title),
        body: body,
        categoryId: category
    }).then(() => {
        res.redirect("/admin/articles");
    });
});

router.post("/articles/delete", adminAuth,(req, res) => {
    let id = req.body.id;
    if(id != undefined){
        if(!isNaN(id)){//Se ele for um número

            Article.destroy({
                where: {
                    id: id
                }
            }).then(() =>{
                res.redirect("/admin/articles");
            })

        }else{//Não for um número
            res.redirect("/admin/articles");
        }
    }
    else{//Null
        res.redirect("/admin/articles");
    }
});

router.get("/admin/articles/edit/:id", adminAuth,(req, res) => {
    let id = req.params.id;
    Article.findByPk(id).then(article => {
        if(article != undefined){

            Category.findAll().then(categories => {
                res.render("admin/articles/edit", {categories: categories, article: article});
            });
        }
        else{
            res.redirect("/");
        }
    }).catch(erro => {
        res.redirect("/");
    });
});

router.post("/articles/uptade", adminAuth,(req, res) => {
    let id = req.body.id;
    let title = req.body.title;
    let body = req.body.body;
    let category = req.body.category;

    Article.update({title: title, body: body, categoryId: category, slug: slugify(title)}, {
        where: {
            id: id
        }
    
    }).then(() => {
        res.redirect("/admin/articles");
    }).catch(erro => {
        res.redirect("/");
    });
});

router.get("/articles/page/:num", (req, res) => {
    let page = req.params.num;
    let offset = 0;

    if(isNaN(page) || page == 1){
        offset = 0;
    }
    else{
        offset = (parseInt(page) - 1) * 4;
    } 

    Article.findAndCountAll({
        limit: 4,
        offset: offset,
        order: [ ["id", "DESC"] ]
    }).then(articles => {
        let next;

        if((offset + 4) >= articles.count){
            next = false;
        }
        else{
            next = true;
        }

        let result = {
            page: parseInt(page),
            next: next,
            articles: articles
        }

        Category.findAll().then(categories => {
            res.render("admin/articles/page", {result: result, categories: categories});
        });
    });
});

module.exports = router;