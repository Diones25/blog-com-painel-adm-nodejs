const express = require("express");
const router = express.Router();
const User = require("./User");
const bcrypt = require("bcryptjs");

router.get("/admin/users", (req, res) => {
    User.findAll().then(users => {
        res.render("admin/users/index", {users: users});
    });
});

router.get("/admin/users/create", (req, res) => {
    res.render("admin/users/create");
});

router.post("/users/create", (req, res) => {
    let email = req.body.email;
    let password = req.body.password;

    User.findOne({
        where: {
            email: email
        }
    }).then( user => {
        if(user == undefined){//Se o email não estiver cadastrado

            let salt = bcrypt.genSaltSync(10);
            let hash = bcrypt.hashSync(password, salt);

            User.create({
                email: email,
                password: hash
            }).then(() => {
                res.redirect("/");
            }).catch((erro) => {
                res.redirect("/");
            });

        }
        else{//Se o email estiver cadastrado redireciona para a tela de cadastro de usuários
            res.redirect("/admin/users/create");
        }
    });

});

router.get("/login", (req, res) => {
    res.render("admin/users/login");
});

router.post("/authenticate", (req, res) => {
    let email = req.body.email;
    let password = req.body.password;

    User.findOne({
        where: {
            email: email
        }
    }).then(user => {
        if(user != undefined){//Se o usuário existir
            //validar a senha
            let correct = bcrypt.compareSync(password, user.password);

            if(correct){//Se a senha estiver correta
                req.session.user = {
                    id: user.id,
                    email: user.email
                }
                res.redirect("/admin/articles");
            }
            else{
                res.redirect("/login");//Se não estiver correta vai para a tela de login
            }
        } 
        else{
            res.redirect("/login");//Se não existir vai para a rota de login
        }
    });
});

router.get("/logout", (req, res) => {
    req.session.user = undefined;
    res.redirect("/");
});

module.exports = router; 