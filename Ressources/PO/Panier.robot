*** Settings ***
Library   SeleniumLibrary
*** Keywords ***
Inspecter panier

    Click link  xpath=//*[@id="nav-cart"]

     Wait Until Page Containes  Votre panier

Passer Commande

    Click Element  xpath=//*[@id="sc-buy-box-ptc-button"]/span/input

    Wait Until Page Containes  S'identifier
