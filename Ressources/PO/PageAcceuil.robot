*** Settings ***
Library  SeleniumLibrary
Resource   ../variables.robot

*** Keywords ***
Charger La Page Web
    Go To  ${GOOGLE_URL}

    Wait Until Page Contains   Google

Chercher Le site Web
    Click Element  xpath=//*[@id="L2AGLb"]/div
    Clear Element Text  name=q

    Input Text  name=q  amazon

    Mouse Down  xpath=/html/body/div[1]/div[2]/div/img
    Mouse Up  xpath=/html/body/div[1]/div[2]/div/img

    Click Element  xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]

     Wait Until Page Contains   Images

Naviguer vers le site amazon
    Click Element   xpath=//*[@id="tads"]/div/div/div/div/div[1]/a/div[1]/span

    Wait Until Page Contains   Commandes
Rechercher le produit
    Click Element  xpath=//*[@id="sp-cc-accept"]

    Clear Element Text  xpath=//*[@id="twotabsearchtextbox"]

     Input Text   xpath=//*[@id="twotabsearchtextbox"]  RJ45 Cable

     Click Element  xpath=//*[@id="nav-search-submit-button"]


     Wait Until Page Contains   RJ45 Cable
