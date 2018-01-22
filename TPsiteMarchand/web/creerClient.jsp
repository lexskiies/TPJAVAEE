<%-- 
    Document   : creerClient
    Created on : 20 janv. 2018, 14:59:54
    Author     : solal
--%>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>iBuy</title>
	<link rel="stylesheet" href="css/style.css">
	<link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">
	<meta charset="UTF-8">
</head>
<header>
	<h1><i class="fab fa-apple"></i>iBuy</h1>
</header>
<body>
	<div id="cadre">
            <form method="get" action="creationClient">
                    <h2>Informations client</h2>
    
                    <label for="nomClient">Nom <span class="requis">*</span></label>
                    <input type="text" id="nomClient" name="nomClient" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="prenomClient">Prénom </label>
                    <input type="text" id="prenomClient" name="prenomClient" value="" size="20" maxlength="20" />
                    <br />
    
                    <label for="adresseClient">Adresse de livraison <span class="requis">*</span></label>
                    <input type="text" id="adresseClient" name="adresseClient" value="" size="20" maxlength="50" />
                    <br />
    
                    <label for="telephoneClient">Numéro de téléphone <span class="requis">*</span></label>
                    <input type="text" id="telephoneClient" name="telephoneClient" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="emailClient">Adresse email</label>
                    <input type="email" id="emailClient" name="emailClient" value="" size="20" maxlength="60" />
                    <br />
                    
                    <label for="emailClient">Mot de passe</label>
                    <input type="password" id="mdpClient" name="mdpClient" value="" size="20" maxlength="60" />
                    <br />
                <input type="submit" value="Valider"  />
                <br><a href="identification.html" class="login">déjà un compte ? connectez-vous</a>
            </form>
	</div>
</body>
</html>
