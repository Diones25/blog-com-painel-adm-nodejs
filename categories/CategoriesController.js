const express = require("express");
const router = express.Router();
const Category = require("./Category");
const slugify = require("slugify");
const adminAuth = require("../middleware/adminAuth");

router.get("/admin/categories/new", adminAuth,(req, res) =>{
    res.render("admin/categories/new");
});

router.post("/categories/save", adminAuth,(req, res) =>{
    let title = req.body.title;
    if(title != undefined){
        Category.create({
            title: title,
            slug: slugify(title)
        }).then(() =>{
            res.redirect("/admin/categories");
        });
    }
    else{
        res.redirect("/admin/categories/new");
    }
});

router.get("/admin/categories", adminAuth,(req, res) => {

    Category.findAll().then(categories => {
        res.render("admin/categories/index", {categories: categories});
    });
});

router.post("/categories/delete", adminAuth,(req, res) => {
    let id = req.body.id;
    if(id != undefined){
        if(!isNaN(id)){//Se ele for um número

            Category.destroy({
                where: {
                    id: id
                }
            }).then(() =>{
                res.redirect("/admin/categories");
            })

        }else{//Não for um número
            res.redirect("/admin/categories");
        }
    }
    else{//Null
        res.redirect("/admin/categories");
    }
});

router.get("/admin/categories/edit/:id", adminAuth,(req, res) => {
    let id = req.params.id;

    if(isNaN(id)){//Se não for um número
        res.redirect("/admin/categories");
    }

    Category.findByPk(id).then(category => {
        if(category != undefined){
            res.render("admin/categories/edit", {category: category});
        }
        else{
            res.redirect("/admin/categories");
        }
    }).catch( erros => {
        res.redirect("/admin/categories");
    });
});

router.post("/categories/update", adminAuth,(req, res) => {
    let id = req.body.id;
    let title = req.body.title;
    Category.update({title: title, slug: slugify(title)}, {
        where: {
            id: id
        }
    }).then(() => {
        res.redirect("/admin/categories");
    });
});

module.exports = router;