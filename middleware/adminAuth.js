function adminAuth(req, res, next){
    if(req.session.user != undefined){//Se existe a sessão e o usuário estiver logado
        next();
    }
    else{
        res.redirect("/login");
    }
}

module.exports = adminAuth;