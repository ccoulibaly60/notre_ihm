*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Choisir Produit Interessant

    Click Element  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[3]/div/div/div/div/div/div/div[2]/div[1]/h2/a/span

    Wait Until Page Contains  Ajouter au panier

Choisir taille cable

    Click Element  xpath=//*[@id="tp-inline-twister-dim-values-container"]/ul/li[2]

    Wait Until Page Contains  Ajouter au panier

Ajouter produit au panier
    Click Element  xpath=//*[@id="add-to-cart-button"]

    Wait Until Page Contains  Ajouté au panier