---
layout: sidebar-starter
title: Configuration des composants de géocodage
categories: documentation
permalink: /config-composants
lang: fr
ref: config-components
---

# Configuration des composants de géocodage

Le package de géocodage comporte principalement trois composants Visualforce génériques qui peuvent être intégrés dans des pages Visualforce afin d'être ajoutés à une page de présentation d'un objet (accessible depuis un navigateur web), être ajoutés en tant qu'application Salesforce1 ou encore être utilisés comme action rapide depuis une page de présentation Salesforce1 d'un objet.

Les composants peuvent être configurés pour des objets standards Salesforce et des objets personnalisés.

Dans ce chapitre, nous allons configurer les différents composants pour l'objet Compte (« Account ») standard de Salesforce possédant le sous-ensemble suivant de champs :

{:.table.table-bordered}
| Etiquette | Nom d'API | Type | Information |
|:--------------------|:------|
| Adresse                 | BillingStreet             | Texte           | Adresse |
| Code Postal             | BillingPostalCode         | Texte           | Adresse |
| Ville                   | BillingCity               | Texte           | Adresse |
| Etat                    | BillingState              | Texte           | Adresse |
| Pays                    | BillingCountry            | Texte           | Adresse |
| Rue (Normalisée)        | Normalized_Street__c      | Texte           | Adresse normalisée |
| Code Postal (Normalisé) | Normalized_Postal_Code__c | Texte           | Adresse normalisée |
| Ville (Normalisée)      | Normalized_City__c        | Texte           | Adresse normalisée |
| Etat (Normalisé)        | Normalized_State__c       | Texte           | Adresse normalisée |
| Pays (Normalisée)       | Normalized_Country__c     | Texte           | Adresse normalisée |
| geoloc                  | geoloc__c                 | Géolocalisation | latitude/longitude |

Le Champ <code>geoloc__c</code> est champ de type "Géolocalisation" paramétré en Décimal avec 8 chiffres pour les décimales.

## Configuration du composant de géocodage

Nous allons configurer le composant pour l'intégrer à la page de présentation d'un objet de type Account dans une section nommée "**Géocodage**".

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_components-page_presentation.png){:.img.img-responsive.img-center.img-bordered}

Pour réaliser cela, nous allons utiliser le composant Visualforce **GeocodeComponent** qui possède les attributs suivants :

{:.table.table-bordered}
| Attributs      | Requis | Informations |
| recId          | oui    | id de l'objet Salesforce | Attributs d'adresse |
| recType        | oui    | Type de l'objet Salesforce | Attributs d'adresse |
| street         | oui    | Champ d'adresse où se trouve la rue | Attributs d'adresse |
| city           | oui    | Champ d'adresse où se trouve la ville | Attributs d'adresse |
| postalCode     | oui    | Champ d'adresse où se trouve le  code postal | Attributs d'adresse |
| state          | oui    | Champ d'adresse où se trouve l'état (ou département) | Attributs d'adresse |
| country        | oui    | Champ d'adresse où se trouve le pays | Attributs d'adresse |
| geoLoc         | oui    | Champ contenant les coordonnées ||
| normStreet     |        | Champ où sera sauvegardée la rue | Attributs d'adresse normalisée |
| normCity       |        | Champ où sera sauvegardée la ville | Attributs d'adresse normalisée |
| normPostalCode |        | Champ où sera sauvegardé le code postal | Attributs d'adresse normalisée |
| normState      |        | Champ où sera sauvegardé l'état (ou département) | Attributs d'adresse normalisée |
| normCountry    |        | Champ où sera sauvegardé le pays | Attributs d'adresse normalisée |
| displayFields  |        | Liste de champs à afficher dans la fiche d'information | Visualisation |
| maxResults     |        | Nombre de résultats max lors de la recherche de proximité. Par défaut la valeur est 10. | Visualisation |
| nearbyDistance |        | Distance de recherche de proximité par défaut. Par défaut la valeur est 10. | Visualisation |

Il est obligatoire de renseigner les attributs permettant de caractériser une adresse même en y mettant une chaîne vide. Par contre, il faut au minimum que la valeur de l'attribut "street" corresponde à un champ existant de l'objet. Dans le cas contraire, un message d'erreur informera l'utilisateur qu'il est nécessaire de vérifier la configuration du composant. Les valeurs des champs de l'objet correspondant à ces attributs sont utilisées pour réaliser le géocodage.

Les attributs de l'adresse normalisée sont utilisés pour la sauvegarde de l'adresse provenant du géocodeur. Il est bien sûr possible que les valeurs de ces attributs soient les mêmes que celles utilisées pour l'adresse.

La liste de champ de l'attribut "displayFields" est utilisée pour afficher les valeurs dans la fiche d'information lorsque l'utilisateur clique sur un marqueur de la carte.

Fiche d'information de l'objet courant
![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_components-fiche_info_obj_courant.png){:.img.img-responsive.img-center}

Fiche d'information d'un autre objet
![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_components-fiche_info_autre_obj.png){:.img.img-responsive.img-center}

## Création de la page Visualforce

Nous allons créer une page Visualforce qui intègre le composant **GeocodeComponent**.

1.	Dans **Configuration > Développer > Pages**
2.	Cliquer sur le bouton "Nouveau" pour créer une nouvelle page
3.	Dans la zone de saisie de l'étiquette, entrer la valeur "**GeocodePDV**"
4.	Dans le code de la page, mettons ce qui suit:

```
<apex:page showHeader="false" sidebar="false" standardController="Account" docType="html-5.0">
    <ggo:GeocodeComponent recId="{!Account.id}" recType="Account" 
        street="BillingStreet" city="BillingCity" 
        postalCode="BillingPostalCode" state="BillingState" 
        country="BillingCountry" 
        geoLoc=" GeoLoc__c"  displayfields="Potentiel_Total__c,Potentiel__c" 
        normStreet="Normalized_Street__c" normCity="Normalized_City__c" 
        normPostalCode="Normalized_Postal_Code__c" normState="Normalized_State__c" 
        normCountry="Normalized_Country__c"  
        maxResults="50" nearbyDistance="0.4"/>
</apex:page>
```

Afin que la page puisse être intégrée à une page de présentation d'un objet de type Account, il est nécessaire que le contrôleur standard de cette page soit "**Account**".
Dans cette exemple, l'attribut "state" reste vide, car l'objet Account ne possède pas de champ dans lequel on peut trouver la valeur du département.
Il est important d'indiquer les noms API des champs et non leur libellé. 

5.	Cliquer sur le bouton "Enregistrer" pour sauvegarder la page.

## Intégration à la page de présentation d'un Account

1.	Dans **Configuration > Personnaliser > Comptes > Présentation de page**
2.	Dans la section "Présentations de page", cliquer sur "Modifier" devant la présentation souhaitée.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_components-config_pres_page.png){:.img.img-responsive.img-center.img-bordered}

3.	Dans la page d'édition de la présentation, cliquer sur "**Pages Visualforce**", insérer une section que l'on nommera "**Géocodage**", présentée sur 1 colonne.
Insérer la page "**GeocodePDV**" dans cette nouvelle section

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_components-page_vf.png){:.img.img-responsive.img-center.img-bordered}

Pour un rendu plus agréable du composant, modifier sa taille pour donner une hauteur de 450px. 

4.	Cliquer sur le bouton "**Enregistrer**" pour sauvegarde la modification de la page de présentation des objets de type Account.
