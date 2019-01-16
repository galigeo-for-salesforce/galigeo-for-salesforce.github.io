---
layout: sidebar-starter
title: Configuration de l'app mobile
categories: starter
permalink: /config-app-mobile
lang: fr
ref: config-mobile-app
---

# Configuration de l'app mobile

---

{:.table.table-bordered}
| ![notice]({{ site.url }}/assets/warning.png){:height="40px" width="40px"}  | Aucun support ne sera apporté pour ce composant mis gratuitement à disposition. |

## Dans cet article
{:.no_toc}

* Table of Contents
{:toc}

---

## Composant mobile

Nous allons mettre en place une page accessible à partir du menu de l'application mobile (anciennement Salesforce1). Le composant utilisé permet à un commercial sur le terrain de visualiser des objets qui se trouvent à proximité.

<p class="text-center">
<img src="/assets/img-str-admin/geocoding_mobile_app-pdv.png" class="img img-bordered">
<img src="/assets/img-str-admin/geocoding_mobile_app-map-fr.png" class="img img-bordered">
</p>

Pour réaliser ceci, nous utiliserons le composant **GeocodeComponentLocationSF1** qui possède les attributs suivants :

{:.table.table-bordered}
| Attributs      | Requis | Informations | |
| ------------- | ------------- | ------------- |
| recType                | Oui | Type de l'objet Salesforce | |
| standardAddress        |     | Champ d'adresse standard à utiliser (pour Compte, Contact et Piste) | |
| geoLoc                 |     | Champ contenant les coordonnées | |
| displayFields          |     | Liste de champs à afficher dans la fiche d'information | Visualisation |
| maxResults             |     | Nombre de résultats max lors de la recherche de proximité. Par défaut la valeur est 10 | Visualisation |
| nearbyDistance         |     | Distance de recherche de proximité par défaut. Par défaut la valeur est 10 | Visualisation |

### Création de la page Visualforce

Créons la page Visualforce qui intègre le composant **GeocodeComponentLocationSF1** :
1.	Dans **Configuration > Développer > Pages**
2.	Cliquer sur le bouton "Nouveau" pour créer une nouvelle page
3.	Dans la zone de saisie de l'étiquette, entrer la valeur "**GeocodePDVLocationSF1**" 
4.	Cocher la case "Disponibles pour les applications mobiles Salesforce".
5.	Dans le code de la page, mettons ce qui suit :

    ```
    <apex:page showHeader="false" sidebar="false" standardController="Account" docType="html-5.0">
    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    </head>
    <body>
      <ggo:GeocodeComponentLocationSF1 recType="Account" 
        geoLoc="GeoLoc__c"  
        displayfields="Phone" 
        maxResults="50" nearbyDistance="0.4"/>    
    </body>
    </apex:page>
    ```

6.	Cliquer sur le bouton "Enregistrer" pour sauvegarder la page.

### Intégration au menu de l'application mobile

Dans un premier temps, il est nécessaire de créer un onglet pour la page créée précédemment :
1.	Dans **Configuration > Créer**, cliquer sur le lien "Onglets". 
2.	Dans la section "Onglets Visualforce", cliquer sur le bouton "Nouveau". 
3.	Choisir la page Visualforce précédemment créée, mettre "My PDV" comme étiquette par exemple (le champ nom sera renseigné automatiquement), 
4.	Choisir un style d'onglet et cliquer sur le bouton "Suivant".

    ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/geocoding_mobile_app-pdv_menu.png){:.img.img-responsive.img-center.img-bordered}

5.	Choisir pour quel profil cet onglet sera disponible et cliquer sur le bouton "Suivant".
6.	Désactiver l'insertion de cet onglet pour toutes les applications existantes
7.	Cliquer sur le bouton "Enregistrer".

    ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/geocoding_mobile_app-vf_tab-fr.png){:.img.img-responsive.img-center.img-bordered}

Il ne reste plus qu'à l'ajouter au menu de l'application Salesforce1 :
1.	Aller dans **Configuration > Administration mobile**, 
2.	cliquer sur le lien "Navigation mobile".
3.	Ajouter l'onglet "My PDV" aux éléments du menu de navigation
4.	Cliquer sur le bouton "Enregistrer".

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/geocoding_mobile_app-config-fr.png){:.img.img-responsive.img-center.img-bordered}

## Configuration d'action rapide de Salesforce1

Le dernier composant est adapté aux supports mobiles. Il peut être intégré à une page Visualforce qui sera utilisée pour une action rapide.

<p class="text-center">
<img src="/assets/img-str-admin/geocoding_mobile_app-quick_action-fr.png" class="img img-bordered">
<img src="/assets/img-str-admin/geocoding_mobile_app-quick_action2-fr.png" class="img img-bordered">
</p>

Pour réaliser ceci, nous utilisons le composant **GeocodeComponentQuickActionSF1** qui possède les attributs suivants :

{:.table.table-bordered}
| Attributs      | Requis | Informations|
| ------------- | ------------- | ------------- |
| recId          | Oui    | id de l'objet Salesforce| Attributs d'adresse |
| recType        | Oui    | Type de l'objet Salesforce| Attributs d'adresse |
| street         | Oui    | Champ d'adresse où se trouve la rue| Attributs d'adresse |
| city           | Oui    | Champ d'adresse où se trouve la ville| Attributs d'adresse |
| postalCode     | Oui    | Champ d'adresse où se trouve le  code postal| Attributs d'adresse |
| state          | Oui    | Champ d'adresse où se trouve l'état (ou département)| Attributs d'adresse |
| country        | Oui    | Champ d'adresse où se trouve le pays| Attributs d'adresse |
| geoLoc         | Oui    | Champ contenant les coordonnées| |
| normStreet     |        | Champ où sera sauvegardée la rue| Attributs d'adresse normalisée |
| normCity       |        | Champ où sera sauvegardée la ville| Attributs d'adresse normalisée |
| normPostalCode |        | Champ où sera sauvegardé le code postal| Attributs d'adresse normalisée |
| normState      |        | Champ où sera sauvegardé l'état (ou département)| Attributs d'adresse normalisée |
| normCountry    |        | Champ où sera sauvegardé le pays| Attributs d'adresse normalisée |
| displayFields  |        | Liste de champs à afficher dans la fiche d'information| Visualisation |
| maxResults     |        | Nombre de résultats max lors de la recherche de proximité. Par défaut la valeur est 10.| Visualisation |
| nearbyDistance |        | Distance de recherche de proximité par défaut. Par défaut la valeur est 10.| Visualisation |

Les attributs sont les mêmes que ceux du composant **GeocodeComponent** utilisé précédemment, et ce composant se configure de la même manière.

### Création de la page Visualforce

Nous allons créer une page Visualforce qui intègre le composant "**GeocodeComponentQuickActionSF1**".
1.	Dans **Configuration > Développer > Pages**, 
2.	Cliquer sur le bouton "nouveau" pour créer une nouvelle page
3.	Dans la zone de saisie de l'étiquette, entrer la valeur "**GeocodePDVQuickActionSF1**" 
4.	Cocher la case "Disponible pour les applications mobiles Salesforce".
5.	Dans le code de la page, mettons ce qui suit :

    ```
    <apex:page showHeader="false" sidebar="false" standardController="Account" docType="html-5.0">
    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    </head>
    <body>
      <ggo:GeocodeComponentQuickActionSF1 recId="{!Account.id}" recType="Account" 
        street="BillingStreet" city="BillingCity" 
        postalCode="BillingPostalCode" state="BillingState" 
        country="BillingCountry" 
        geoLoc="geoLoc__c"  
        displayfields="Phone"  
        normStreet="Normalized_Street__c" normCity="Normalized_City__c"
        normPostalCode="Normalized_Postal_Code__c" normState="Normalized_State__c" 
        normCountry="Normalized_Country__c"  
        maxResults="50" nearbyDistance="0.4"/>
    </body>
    </apex:page>
    ```

6.	Cliquer sur le bouton "Enregistrer" pour sauvegarder la page.

### Création d'une action rapide

Dans un premier temps, il faut créer une action qui référence la page Visualforce créée précédemment.

1.	Dans **Configuration > Personnaliser > Comptes > Boutons, liens et actions**
2.	Dans la section "Boutons, liens et actions", cliquer sur "Nouvelle action".
3.	Dans la liste déroulante du type d'action, choisir "Visualforce personnalisé"
4.	Dans la liste déroulante des pages Visualforce, choisir la page "**GeocodePDVQuickActionSF1**"
5.	Dans la zone de saisie de l'étiquette, entrer "Localisation"
6.	Cliquer sur le bouton "Enregistrer".

    ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/geocoding_mobile_app-quick_action_sf1-fr.png){:.img.img-responsive.img-center.img-bordered}

Maintenant que l'action personnalisée est créée, il ne reste plus qu'à l'ajouter à la page de présentation des Account.

1.	Dans **Configuration > Personnaliser > Comptes > Présentation de page**
2.	Dans la section "Présentations de page", cliquer sur "Modifier" devant la présentation souhaitée
3.	Dans la page d'édition de la présentation, cliquer sur la catégorie "Actions"
4.	Dans la section "Actions dans l'éditeur", cliquer sur "**remplacer la présentation d'éditeur globale**".
5.	Insérer l'action "Localisation" dans la section "Actions dans l'éditeur"

    ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/geocoding_mobile_app-page_layout-fr.png){:.img.img-responsive.img-center.img-bordered}

6.	Cliquer sur le bouton "Enregistrer"