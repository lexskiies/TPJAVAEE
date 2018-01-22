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
	<a href="commande.html"><i class="fas fa-clipboard"></i> Mes commandes</a>
	<a href="panier.html"><i class="fas fa-shopping-cart"></i> Panier</a>
	<a href="compte.html"><i class="fas fa-user"></i> Mon compte</a>
	<a href="identification.html"><i class="fas fa-sign-out-alt"></i> Se deconnecter</a>
</header>
<body>
	<div id="cadre">
		<form action="creationCommande">
			<h2>Mes commandes</h2>
			<table>
				<thead>
					<td>Nom</td>
					<td>Quantitée</td>
					<td>Coût Unitaire</td>
					<td>Total</td>
				</thead>
				<tr>
					<td>Pomme rouge</td>
					<td>1</td>
					<td>0.9$</td>
					<td>0.9$</td>
				</tr>
				<tfoot>
					<td colspan="3"></td>
					<td>0.9$</td>
				</tfoot>
			</table>
                                    <form method="get" action="creationCommande">
                    <h2>Informations client</h2>
    
                    <label for="nomClient">Nom <span class="requis">*</span></label>
                    <input type="text" id="nomClient" name="nomClient" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="prenomClient">Prénom </label>
                    <input type="text" id="prenomClient" name="prenomClient" value="" size="20" maxlength="20" />
                    <br />
    
                    <label for="adresseClient">Adresse de livraison <span class="requis">*</span></label>
                    <input type="text" id="adresseClient" name="adresseClient" value="" size="20" maxlength="20" />
                    <br />
    
                    <label for="telephoneClient">Numéro de téléphone <span class="requis">*</span></label>
                    <input type="text" id="telephoneClient" name="telephoneClient" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="emailClient">Adresse email</label>
                    <input type="email" id="emailClient" name="emailClient" value="" size="20" maxlength="60" />
                    <br />
                    <h2>Informations commande</h2>
                    
                    <label for="dateCommande">Date <span class="requis">*</span></label>
                    <input type="text" id="dateCommande" name="dateCommande" value="La date sera renseignÃ©e automatiquement" size="20" maxlength="20" disabled />
                    <br />
                    
                    <label for="montantCommande">Montant <span class="requis">*</span></label>
                    <input type="text" id="montantCommande" name="montantCommande" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="modePaiementCommande">Mode de paiement <span class="requis">*</span></label>
                    <input type="text" id="modePaiementCommande" name="modePaiementCommande" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="statutPaiementCommande">Statut du paiement</label>
                    <input type="text" id="statutPaiementCommande" name="statutPaiementCommande" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="modeLivraisonCommande">Mode de livraison <span class="requis">*</span></label>
                    <input type="text" id="modeLivraisonCommande" name="modeLivraisonCommande" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="statutLivraisonCommande">Statut de la livraison</label>
                    <input type="text" id="statutLivraisonCommande" name="statutLivraisonCommande" value="" size="20" maxlength="20" />
                    <br />
			<input type="submit" name="valider" value="Valider la commande">
		</form>
	</div>
</body>
</html>