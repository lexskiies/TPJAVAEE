/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tp.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.beans.Client;
/**
 *
 * @author alexi
 */
public class CreationClient extends HttpServlet {

    @Override
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /*
         * Récupération des données saisies, envoyées en tant que paramètres de
         * la requête GET générée à la validation du formulaire
         */
        String nom = request.getParameter( "nom" );
        String prenom = request.getParameter( "prenom" );
        String adresse = request.getParameter( "adresse" );
        String telephone = request.getParameter( "telephone" );
        String email = request.getParameter( "adrMail" );
        String mdp = request.getParameter("mdp");
        String message;

        if ( nom.trim().isEmpty() || adresse.trim().isEmpty() || telephone.trim().isEmpty() ) {
            message = "Erreur - Vous n'avez pas rempli tous les champs obligatoires. <br> <a href=\"creerClient.jsp\">Cliquez ici</a> pour accéder au formulaire de création d'un client.";
        } else {
            message = "Client créé avec succès !";
        }
        

        Client client = new Client();
        client.setNom( nom );
        client.setPrenom( prenom );
        client.setAdresse( adresse );
        client.setTelephone( telephone );
        client.setEmail( email );
        client.setMdp(mdp);

        /* Ajout du bean et du message à l'objet requête */
        request.setAttribute( "client", client );
        request.setAttribute( "message", message );

        /* Transmission à la page JSP en charge de l'affichage des données */
        this.getServletContext().getRequestDispatcher( "/afficherClient.jsp" ).forward( request, response );
    }
}
