<%-- 
    Document   : inscription
    Created on : 20 déc. 2017, 14:28:59
    Author     : alexi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>s'inscrire</title>
    </head>
    <body>
        <form method="get" action="creationClient">
            <label for="adrmail">Adresse e-mail : </label>
            <input type="email" name="adrMail"></br>
            <label for="mdp">Mot de passe : </label>
            <input type="password" name="mdp"></br>
            <label for="nom">Nom : </label>
            <input type="text" name="nom"></br>
            <label for="prenom">Prenom : </label>
            <input type="text" name="prenom"></br>
            <label for="adresse">Adresse de livraison : </label>
            <input type="text" name="adresse"></br>
            <label for="telephone">N° de téléphone : </label>
            <input type="tel" name="telephone"></br>
            <input type="submit" name="valider" value="S'inscrire">
        </form>
    </body>
</html>
