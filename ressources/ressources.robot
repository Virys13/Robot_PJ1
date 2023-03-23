*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}=    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}=    chrome

*** Keywords ***
se connecter à l'application orage demo
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3
Saisir le nom de l'utilisateur
    Input Text    name:username    Admin
Saisir le mot de passe
    Input Password    name:password    admin123
Cliquer sur le bouton login
    Click Button    xpath://button
    Sleep    3
valider que la page d'accueil s'affiche
    #Element Text Should Be    xpath://h6    Dashboard
    Page Should Contain    Dashboard