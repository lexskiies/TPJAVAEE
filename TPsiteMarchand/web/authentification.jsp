<%-- 
    Document   : authentification
    Created on : 13 déc. 2017, 09:00:44
    Author     : alexi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>s'authentifier</title>
    </head>
    <body>
        <form method="get" action="verifAuthentification">
            <input type="text" name="login" placeholder="login">
            <input type="text" name="mdp" placeholder="Mot de passe">
            <input type="submit" name="valider" value="Se connecter">            
        </form>
    </body>
</html>
