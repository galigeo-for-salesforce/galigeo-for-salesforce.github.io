---
layout: sidebar-starter
title: Configuration des composants de géocodage
categories: starter
permalink: /config-composants
lang: fr
ref: config-components
---

# Configuration des composants de géocodage

---

## Dans cet article
{:.no_toc}

* Table of Contents
{:toc}

---

Nous allons intégrer le composant de géocodage à la page de présentation d'un Compte, Contact, ou Piste dans une section nommée "**Carte**".

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_components-page_layout-fr.png){:.img.img-responsive.img-center.img-bordered}

5 composants ont été préconfigurés en se basant sur les adresses standards Salesforce des objets :

{:.table.table-bordered}
| Objet | Adresse | Page VisualForce |
|:--------------------|:------|
| Compte                 | BillingAddress             | GeocodeAccountBilling           |
| Compte                 | ShippingAddress            | GeocodeAccountShipping          |
| Contact                | MailingAddress             | GeocodeContactMailingAddress    |
| Contact                | OtherAddress               | GeocodeContactOtherAddress      |
| Piste                  | Address                    | GeocodeLeadAddress              |

## Intégration à la page de présentation d'un Compte

<br/>
<iframe style="display:block;" class="img-center" width="560" height="315" src="https://www.youtube.com/embed/m-p-FMbgYLo?start=33" frameborder="0" allowfullscreen></iframe>
<br/>

Nous allons utiliser l'adresse de facturation d'un compte pour le géocoder et afficher une carte dans la page de présentation. Nous allons donc intégrer la page GeocodeAccountBilling en suivants les étapes ci-dessous :

1.	Dans **Configuration > Objets et champs > Gestionnaire d'objets > Compte > Présentation de page**
2.	Dans la section "Présentations de page", cliquer sur "Modifier" devant la présentation souhaitée.

    ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_components-config_pres_page.png){:.img.img-responsive.img-center.img-bordered}

3.	Dans la page d'édition de la présentation, cliquer sur "**Pages Visualforce**", insérer une section que l'on nommera "**Géocodage**", présentée sur 1 colonne.
Insérer la page "**GeocodeAccountBilling**" dans cette nouvelle section.

    ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_components-page_vf.png){:.img.img-responsive.img-center.img-bordered}

    Pour un rendu plus agréable du composant, modifier sa taille pour donner une hauteur de 450px. 

4.	Cliquer sur le bouton "**Enregistrer**" pour sauvegarde la modification de la page de présentation des objets de type Account.

Répéter les mêmes étapes pour intégrer d'autres composants et adresses présentés dans le tableau ci-dessus.

## Configuration avancée par la création de pages Visualforce

Vous pouvez personnaliser les composants avant de les intégrer dans une page.

<div class="alert alert-warning" role="alert"> <strong>Important :</strong> si ce n'est pas déjà le cas, vous devez créer un champ personnalisé de géolocalisation, paramétré en Décimal avec 8 chiffres pour les décimales. Dans cet article nous l'appelerons <code>geoloc__c</code>.</div>

<iframe style="display:block;" class="img-center" width="560" height="315" src="https://www.youtube.com/embed/m-p-FMbgYLo" frameborder="0" allowfullscreen></iframe>
<br/>

Nous allons créer une page Visualforce qui intègre le composant **GeocodeComponent**.

1.  Dans **Configuration > Développer > Pages**
2.  Cliquer sur le bouton "Nouveau" pour créer une nouvelle page
3.  Dans la zone de saisie de l'étiquette, entrer la valeur "**GeocodePDV**"
4.  Dans le code de la page, mettons ce qui suit :

    ```
    <apex:page showHeader="false" sidebar="false" standardController="Account" docType="html-5.0">
        <ggo:GeocodeComponent recId="{!Account.id}" recType="Account" 
            street="BillingStreet" city="BillingCity" 
            postalCode="BillingPostalCode" state="BillingState" 
            country="BillingCountry" 
            geoLoc="GeoLoc__c"  displayfields="Phone" 
            normStreet="Normalized_Street__c" normCity="Normalized_City__c" 
            normPostalCode="Normalized_Postal_Code__c" normState="Normalized_State__c" 
            normCountry="Normalized_Country__c"  
            maxResults="50" nearbyDistance="0.4"/>
    </apex:page>
    ```

    <br/>
    <div class="alert alert-info" role="alert">Afin que la page puisse être intégrée à une page de présentation d'un objet de type Account, il est nécessaire que le contrôleur standard de cette page soit "<strong>Account</strong>".<br/><br/>
    Dans cet exemple, l'attribut "state" reste vide, car l'objet Account ne possède pas de champ dans lequel on peut trouver la valeur du département.<br/>
    Il est important d'indiquer les noms API des champs et non leur libellé.</div>

5.  Cliquer sur le bouton "Enregistrer" pour sauvegarder la page.

    ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_components-vf_markup-fr.png){:.img.img-responsive.img-center.img-bordered}

## Notes techniques

L'objet Compte possède le sous-ensemble de champs suivant :

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

Le composant Visualforce **GeocodeComponent** possède les attributs suivants :

{:.table.table-bordered}
| Attributs      | Requis | Informations | |
|:--------------------|:------|
| recId                 | Oui    | id de l'objet Salesforce |  |
| recType               | Oui    | Type de l'objet Salesforce |  |
| standardAddress       |        | Champ d'adresse standard à utiliser (pour Compte, Contact et Piste) | Attributs d'adresse |
| saveNormalizedAddress |        | Sauve l'adresse normalisée (default = true) | Attributs d'adresse |
| street                |        | Champ d'adresse où se trouve la rue, requis si standardAddress non renseigné | Attributs d'adresse |
| city                  |        | Champ d'adresse où se trouve la ville, requis si standardAddress non renseigné | Attributs d'adresse |
| postalCode            |        | Champ d'adresse où se trouve le  code postal, requis si standardAddress non renseigné | Attributs d'adresse |
| state                 |        | Champ d'adresse où se trouve l'état (ou département), requis si standardAddress non renseigné | Attributs d'adresse |
| country               |        | Champ d'adresse où se trouve le pays, requis si standardAddress non renseigné | Attributs d'adresse |
| geoLoc                |        | Champ contenant les coordonnées, si renseigné remplace le champ de géolocalisation de standardAddress  ||
| normStreet            |        | Champ où sera sauvegardée la rue | Attributs d'adresse normalisée |
| normCity              |        | Champ où sera sauvegardée la ville | Attributs d'adresse normalisée |
| normPostalCode        |        | Champ où sera sauvegardé le code postal | Attributs d'adresse normalisée |
| normState             |        | Champ où sera sauvegardé l'état (ou département) | Attributs d'adresse normalisée |
| normCountry           |        | Champ où sera sauvegardé le pays | Attributs d'adresse normalisée |
| displayFields         |        | Liste de champs à afficher dans la fiche d'information | Visualisation |
| maxResults            |        | Nombre de résultats max lors de la recherche de proximité. Par défaut la valeur est 10. | Visualisation |
| nearbyDistance        |        | Distance de recherche de proximité par défaut. Par défaut la valeur est 10. | Visualisation |

Il est obligatoire de renseigner les attributs permettant de caractériser une adresse même en y mettant une chaîne vide. Par contre, il faut au minimum que la valeur de l'attribut "street" corresponde à un champ existant de l'objet. Dans le cas contraire, un message d'erreur informera l'utilisateur qu'il est nécessaire de vérifier la configuration du composant.
Les valeurs des champs de l'objet correspondant à ces attributs sont utilisées pour réaliser le géocodage.

Les attributs de l'adresse normalisée sont utilisés pour la sauvegarde de l'adresse provenant du géocodeur. Il est bien sûr possible que les valeurs de ces attributs soient les mêmes que celles utilisées pour l'adresse.

La liste de champ de l'attribut "displayFields" est utilisée pour afficher les valeurs dans la fiche d'information lorsque l'utilisateur clique sur un marqueur de la carte.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_components-infowindow_current_obj-fr.png){:.img.img-responsive.img-center}

<p class="text-center small">Fiche d'information de l'objet courant</p>

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_components-infowindow_other_obj-fr.png){:.img.img-responsive.img-center}

<p class="text-center small">Fiche d'information d'un autre objet</p>