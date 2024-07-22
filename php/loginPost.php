<?php
        $serveur = "localhost";
        $login = "root";
        $pass = "";

        include 'connexion.html';

        try{
        $connexion = new PDO("mysql:host=$serveur;dbname=arcadia", $login, $pass);
        $connexion -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        //Récupérer les données du formulaire de connexion
        $emailForm = $_POST['email'];
        $passwordForm = $_POST['password'];

        //Récupérer les utilisateurs 
        $stmt = $connexion->prepare("SELECT * FROM utilisateur WHERE email = :email");

        //Est-ce que l’utilisateur (mail) existe ?
        if($stmt->execute(array(':email' => $emailForm)) && $row = $stmt->fetch()){
            //Vérifier le mot de passe
            if(password_verify($passwordForm, $row['password'])){
                echo "Vous êtes connecté";
            }
            else{
                echo "Mot de passe incorrect";
            }
        }
        else{
            echo "Utilisateur introuvable, êtes-vous sûr de votre mail ?";
        }
        }

        catch(PDOException $e){
            echo 'Echec de la connexion : ' . $e->getMessage(); 
        }
        
    ?>