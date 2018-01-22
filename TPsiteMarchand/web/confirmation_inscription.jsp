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
		<h2>Inscription validée</h2>
        <p>${ message }</p>
        <%-- Puis affichage des donnÃ©es enregistrÃ©es dans le bean "client" transmis par la servlet --%>
        <p>Nom : ${ client.nom }</p>
        <p>Prénom : ${ client.prenom }</p>
        <p>Adresse : ${ client.adresse }</p>
        <p>Numéro de téléphone : ${ client.telephone }</p>
        <p>Email : ${ client.email }</p>
	<br><p>Pour vous identifier, merci de cliquer <a href="identification.html">ici</a></p>
	</div>
</body>
</html>