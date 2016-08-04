---
layout: sidebar
title: Utiliser les objets géographiques
categories: documentation
permalink: /objet-geo
---

## Définir un Objet géographique

Lorsqu’on ouvre l’application pour la première fois, l’onglet « Objets géographiques » est vide.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-019.png){:.img.img-responsive.img-center}

Cliquez sur le bouton « Nouveau », sélectionnez l’option « Utilisez l’assistant pour les objets standard Salesforce » et cliquez ensuite sur « OK » pour voir apparaître l’assistant :

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-020.png){:.img.img-responsive.img-center}

### Créer un objet géographique en utilisant l’assistant de création

La création se déroule en trois étapes :

- Donner un nom à la configuration
- Choisir sur quel objet elle repose
- Définir des filtres

#### ![feet]({{ site.url }}/assets/foot.png) 1ère étape : Nom de l’objet géographique

Entrer un nom et cliquez sur le bouton « Suivant »

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-023.png){:.img.img-responsive.img-center}

#### ![feet]({{ site.url }}/assets/foot.png) 2ème étape : Choisir un objet Salesforce & un champ de géolocalisation

Cette étape permet de remplir le champ géolocalisation qui contient la latitude et la longitude d’un objet Salesforce.

L’assistant, permet de choisir entre cinq options :

- Accounts:
  - BillingAccount : utilise l’adresse de facturation (billingadress)
  - ShippingAccount : utilise l’adresse de livraison (shippingaddress) 
- Lead
  - MailingContact : utilise l’adresse postale (mailingadress)
- Contacts:
  - OtherContact : utilise une autre adresse

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-026.png){:.img.img-responsive.img-center}

Après sélection de l’option « Billing Account », les différents champs constituant l’adresse de cet objet sont affichés.

Vous êtes alors invité à sélectionner un champ de type géolocalisation pour enregistrer les informations qui seront issues du géocodage. Si l’objet ne contient aucun champ de type géolocalisation, cliquez sur le lien « Créer un nouveau champ » pour ajouter un champ de type géolocalisation à l’objet depuis la configuration Salesforce (veuillez consulter les étapes de la section de post-installation du guide d’installation pour ajouter un champ personnalisé de type géolocalisation à un objet Salesforce).

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-027.png){:.img.img-responsive.img-center}

Sélectionnez le champ de géolocalisation

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-028.png){:.img.img-responsive.img-center}

Et cliquez sur « Suivant ».

#### ![feet]({{ site.url }}/assets/foot.png) 3ème étape : Créer des filtres

Vous pouvez créer des filtres à partir des champs de type Liste de sélection :

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-031.png){:.img.img-responsive.img-center}

Par exemple pour créer des filtres basés sur les valeurs du champ « Type du compte », nous obtenons :

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-032.png){:.img.img-responsive.img-center}

Cliquez sur « Enregistrer » pour être redirigé vers la page affichant les informations de notre objet géographique :

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-033.png){:.img.img-responsive.img-center}

Cette page reprend les principaux éléments de la configuration de l’objet géographique, à savoir :

- Propriétés :
  - Principales informations de l’objet géographique (Nom, Objet, Actif ? ...)
  - **Pour géocoder l’ensemble des points dont le champ de géolocalisation est vide, cliquez sur le bouton « Géocoder »** (vous recevrez un e-mail une fois l’opération effectuée)

- Champs à afficher : liste des champs à afficher dans le panneau d’information des
marqueurs présents sur la carte (dans l’exemple ci-dessus on choisira parmi les
champs de l’objet Accounts.

- Filtres : liste des filtres disponibles.
  - Pour chaque filtre : 
    - ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-034.png) modifier le filtre
    - ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-035.png) supprimer le filtre
  - Cliquez sur le bouton ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-036.png) pour ajouter un filtre (voir [Définir des géofiltres]({{ site.url }}/geofiltre))

Cliquez sur le bouton « éditer » pour modifier les « Propriétés » et la configuration des
« Champs à afficher ».

Cliquez sur le bouton « Retour » pour retourner à la page d’administration et sur le bouton « Supprimer » pour supprimer cet objet géographique.

### Créer un Objet géographique en utilisant le mode avancé

Dans la section **Galigeo Admin**, cliquez sur le bouton **« Nouveau »**, choisissez l’option
« Utiliser le mode de création avancé (objets standard et customisés) et cliquez sur « OK » :

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-037.png){:.img.img-responsive.img-center}

#### ![feet]({{ site.url }}/assets/foot.png) 1ère étape : Information sur l’objet géographique

{:.table.table-bordered}
| ![notice]({{ site.url }}/assets/notice.png)  |Remarque : Si l’objet que vous souhaitez utiliser n’a pas encore de champ de type géolocalisation, veuillez consulter la section des étapes de post-installation dans le guide d’installation. |


Entrez un nom et sélectionnez un objet dans la liste déroulante.
Cochez l’option Actif pour que les utilisateurs finaux puissent ajouter cet objet géographique à leurs cartes.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-042.png){:.img.img-responsive.img-center}

En sélectionnant la case à cocher **« Combiner les filtres »** combinera des filtres utilisant une combinaison d’opérateurs logiques (AND / OR) entre les filtres. Vous trouverez plus de détails dans la section géofiltres.

Un objet géographique peut comporter une clause WHERE par défaut. Cette clause vient limiter les points qui seront géocodés ainsi que les points affichés sur les cartes faisant appel à cet objet géographique.
Cliquez sur **« Estimer »** pour obtenir le nombre d’objets sur lequel l’objet géographique va s’exécuter.

{:.table.table-bordered}
| ![notice]({{ site.url }}/assets/notice.png)  |Grâce à cette fonctionnalité, vous pouvez, par exemple, segmenter vos Comptes en différentes régions. |

#### ![feet]({{ site.url }}/assets/foot.png) 2ème étape : Champs d’adresse et de géolocalisation

Une fois l’objet Compte sélectionné, les listes déroulantes de cette section seront complétées à l’aide des champs d’adresse de l’objet Compte.
Nous avons nommé cet objet géographique **« Compte - facturation »**, nous faisons correspondre ses champs avec les champs constituant l’adresse de facturation de l’objet Compte. Nous utilisons le champ **« bill__geoloc__c »** pour enregistrer les latitudes et longitudes résultant du géocodage des adresses :

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-047.png){:.img.img-responsive.img-center}

#### ![feet]({{ site.url }}/assets/foot.png) 3ème étape : Visualisation

Choisissez maintenant :

- L’Abréviation est le champ destiné à être apparaître dans le marqueur cartographique.
La valeur sera tronquée à un seul caractère. Le marqueur sera affiché sur la carte
comme dans la figure suivante ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-050.png)
- Les champs que l’utilisateur final pourra voir dans le panneau d’information des
marqueurs de sa carte:

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-051.png){:.img.img-responsive.img-center}

Cliquez sur le bouton **« Enregistrer »** pour sauvegarder ces informations.

### L’onglet Objet géographique

Dans l’onglet Galigeo Admin, la section Objets géographiques affiche tous les objets géographiques groupés par type d’objet Salesforce.

Ci-dessous, nous avons créé deux objets géographiques basés sur l’objet Salesforce Compte : le premier utilise l’adresse d’expédition, l’autre l’adresse de facturation.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-054.png){:.img.img-responsive.img-center}

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-055.png) Cliquez sur cette icône pour accéder à plus de détails sur l’objet géographique

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-056.png) Cliquez sur cette icône pour supprimer l’objet géographique


