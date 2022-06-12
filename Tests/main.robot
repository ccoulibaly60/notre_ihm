*** Settings ***
Resource  ../Ressources/common.robot
Resource   ../Ressources/PO/PageAcceuil.robot
Resource   ../Ressources/PO/PageProduit.robot
Resource  ../Ressources/PO/Panier.robot

Suite Setup  common.Begin Web Test
Suite Teardown  common.End Web Test
*** Test Cases ***
Voir Produits Disponible
    PageAcceuil.Charger La Page Web
    PageAcceuil.Chercher Le site Web
    PageAcceuil.Naviguer vers le site amazon
    PageAcceuil.Rechercher le produit

Choisir son produit
    PageProduit.Choisir Produit Interessant
    PageProduit.Choisir taille cable
    PageProduit.Ajouter produit au panier

Proceder au paiement
    Panier.Inspecter panier
    Panier.Passer Commande