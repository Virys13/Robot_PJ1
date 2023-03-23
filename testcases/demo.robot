*** Settings ***
Resource    ../ressources/ressources.robot

*** Test Cases ***
login_test
    se connecter à l'application orage demo
    Saisir le nom de l'utilisateur
    Saisir le mot de passe
    Cliquer sur le bouton login
    valider que la page d'accueil s'affiche



