---
layout: sidebar
title: Post installation du package
categories: documentation
permalink: /post-install-std
lang: fr
ref: post-install-std
---

# Etapes de post-installation

Pour terminer l’installation :

- Donnez des droits d’accès à un profil utilisateur en utilisant l’une deux méthodes : 
	- En assignant un ensemble de permissions
	- En modifiant un profil

{:.table.table-bordered}
| ![warning]({{ site.url }}/assets/warning.png)     | Pour les utilisateurs avancés, qui ont accès à l’onglet « Galigeo Admin », l’assistant thématique est une application connectée (au sens de Salesforce) et hébergée sur Heroku. En suivant le workflow Java OAuth fourni par Salesforce, assurez-vous que l’option **« Afficher la configuration »** est activée dans les propriétés du profil ou dans les « ensembles d’autorisation ». |

- Créez un champ custom Geolocation pour chque objet destiné à être cartographié.

---

## Dans cet article
{:.no_toc}

* Table of Contents
{:toc}

---

## Première méthode : créer un droit d’accès grâce à un ensemble d’autorisations

Utiliser les ensembles de permissions est une façon flexible de donner aux utilisateurs Salesforce accès à des fonctionnalités spécifiques (objets, pages, classes ...). C’est la méthode que nous recommandons.

### Cloner des exemples d’ensembles d’autorisations

L’application fournit deux exemples d’ensemble d’autorisations. Ils peuvent être utilisés au début. Rendez-vous sur le menu « Ensembles d’autorisations » dans la section
« Administrer/Gérer les utilisateurs » (via le panneau de gauche).

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-041.png){:.img.img-responsive.img-center}

Parce qu’il est impossible d’ajouter directement un ensemble d’autorisations lorsqu’il est issu d’un package, il est nécessaire de cloner cet ensemble et d’y apporter quelques modifications.

- Pour un utilisateur final :

  Cliquez sur le lien « Cloner » de l’ensemble d’autorisation « Galigeo EndUser ». Entrez les informations demandées et cliquez sur « Enregistrer ».

  ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-042.png){:.img.img-responsive.img-center}

  Sur la liste des ensembles d’autorisations, cliquez sur l’ensemble « Custom Galigeo EndUser ».
  Cliquez sur « Applications attribuées », « Modifier » et ajoutez l’application « galigeo.Galigeo ».

  ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-043.png){:.img.img-responsive.img-center}

Cliquez sur « Enregistrer ».

- Pour un administrateur :

  Clonez l’ensemble d’autorisations « Galigeo AdminUser ».
  Similairement au cas de l’utilisateur final, activez l’application « galigeo.Galigeo » pour cet ensemble d’autorisation.

  Etant donné que l’administrateur doit pouvoir définir des analyses qui reposent sur une source de données, cet ensemble d’autorisation doit avoir accès à une application connectée.
  Pour cela, modifiez la propriété « Applications connectées attribuées ».

  En fonction de si l’installation se passe sur une Sandbox ou un environnement de production, (le point d’entrée du workflow OAuth est différent), vous avez besoin d’activer une application différente :

  - Pour une Sandbox : activez l’application connectée « galigeo_sellwhere_sbx »
  - Pour un environnement de Production : activez l’application connectée « galigeo_sellwhere »

### Créer votre propre ensemble d’autorisations

Rendez-vous dans le menu « Ensembles d’autorisations » dans la section « Administrer/Gérer les utilisateurs » (panneau de gauche).

Créez un « Nouveau » ensemble d’autorisations :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-044.png){:.img.img-responsive.img-center}

Modifiez maintenant les propriétés de l’ensemble d’autorisations.

## Pour un utilisateur final

1. **Application attribuée**

   Ajoutez l’application Galigeo à l’ensemble d’autorisations.
 
   {:.table.table-bordered}
   | Nom de l’application |
   |:--------------------:|
   | galigeo.Galigeo      |

2. **Paramètres des objets**

   A minima, l’utilisateur doit avoir une autorisation de lecture des objets suivants (entre    parenthèses le nom utilisé par l’API) :
   
   - Categories (galigeo__Category__c)
   - Data Sources (galigeo__Data_Source__c)
   - GeoFilter Conditions (galigeo__GeoFilter_Condition__c) 
   - GeoFilter Definitions (galigeo__GeoFilter_Definition__c) 
   - SW Map Objects (galigeo__SW_Map_Object__c)
   - Symbologies (galigeo__Symbology__c)
   - Thematics (galigeo__Thematic__c)
   
   
   {:.table.table-bordered}
   | Type d’autorisation | Activé |
   |:--------------------|:-------|
   | Lire                |Oui     |
   | Créer              |Non     |
   | Modifier            |Non     |
   | Supprimer           |Non     |
   | Afficher tout       |Non     |
   | Modifier tout       |Non     |
   
   
   Pour ces objets, l’utilisateur final a besoin d’une autorisation de lecture sur tous leurs champs.
   Pour les objets ci-dessous, l’utilisateur final a besoin d’une autorisation CRUD (   Créer/Lire/Modifier/Supprimer) pour tous les champs :
   
   - Visual Analytics (galigeo__Visual_Analytic__c)
   - Visual DataSets (galigeo__Visual_DataSet__c)
   - Visual Objects (galigeo__Visual_Object__c)
   
   {:.table.table-bordered}
   | Type d’autorisation | Activé |
   |:--------------------|:-------|
   | Lire                |Oui     |
   | Créer              |Oui     |
   | Modifier            |Oui     |
   | Supprimer           |Oui     |
   | Afficher tout       |Non     |
   | Modifier tout       |Non     |

3. **L’onglet Galigeo**

   L’onglet Galigeo est le principal onglet pour un l’utilisateur final. Il doit être configuré comme Disponible et Visible.
 
   {:.table.table-bordered}
   | Disponible | Visible |
   |:--------------------|:-------|
   | Oui                |Oui     |

4. **Accès aux classes Apex**

   Afin de voir les analyses au sein du client cartographique, les ensembles d’autorisations doivent inclure les classes Apex suivantes :
   
   {:.table.table-bordered}
   | Nom de la classe Apex |
   |:-------------------:|
   | galigeo.AnalyticsDataSetRestService |
   | galigeo.AnalyticsDataSourceRestService |

5. **Accès à la page Visualforce**

   Les pages Visualforce suivantes doivent être accessibles par l’utilisateur final.
   
   {:.table.table-bordered}
   | Nom de page Visualforce |
   |:-------------------:|
   | galigeo.CreateEditVisualDataSet |
   | galigeo.map         |
   | galigeo.mapmobile   |
   | galigeo.MapPage     |
   | galigeo.VisualDataSet |
   | galigeo.VizDataSetSharingRules |

## Pour un administrateur

En plus des accès nécessaires à l’utilisateur final, l’administrateur doit être capable de créer des Map Objects, Symbologies, GeoFilters, Couches Géographiques, Sources de données et Analyses. Voici ce que doit contenir l’ensemble d’autorisations :

1. **Application attribuée**

   Ajoutez l’application Galigeo à l’ensemble d’autorisations.
    
   {:.table.table-bordered}
   | Nom de l’application |
   |:--------------------:|
   | galigeo.Galigeo      |

2. **Paramètres des objets**

   A minima, l’utilisateur doit avoir une autorisation de lecture des objets suivants (entre parenthèses le nom utilisé par l’API) :
   
   - Categories (galigeo__Category__c)
   - Data Sources (galigeo__Data_Source__c)
   - GeoFilter Conditions (galigeo__GeoFilter_Condition__c) 
   - GeoFilter Definitions (galigeo__GeoFilter_Definition__c) 
   - SW Map Objects (galigeo__SW_Map_Object__c)
   - Symbologies (galigeo__Symbology__c)
   - Thematics (galigeo__Thematic__c)
   - Visual Analytics (galigeo__Visual_Analytic__c)
   - Visual DataSets (galigeo__Visual_DataSet__c)
   - Visual Objects (galigeo__Visual_Object__c)
   
   
   {:.table.table-bordered}
   | Type d’autorisation | Activé |
   |:--------------------|:-------|
   | Lire                |Oui     |
   | Créer              |Oui     |
   | Modifier            |Oui     |
   | Supprimer           |Oui     |
   | Afficher tout       |Oui / Non     |
   | Modifier tout       |Oui / Non     |
   
   L’administrateur doit avoir accès total (CRUD) à tous les champs de ces objets.
   Activez les options « Afficher tout » et « Modifier tout » en fonction de l’objet politique de sécurité de votre Org Salesforce.

3. **L'onglet Galigeo**

   L’onglet **Galigeo** est le principal onglet pour un l’utilisateur final. Il doit être configuré comme Disponible et Visible.
   
   {:.table.table-bordered}
   | Disponible | Visible |
   |:--------------------|:-------|
   | Oui                |Oui     |
   
   L’onglet **Galigeo Admin** est l’onglet principal où l’administrateur peut gérer les objets utilisés par l’application. Cet onglet doit être disponible et visible.
   
   {:.table.table-bordered}
   | Disponible | Visible |
   |:--------------------|:-------|
   | Oui                |Oui     |

4. **Accès aux classes Apex**

   Afin de voir les analyses au sein du client cartographique, les ensembles d’autorisations doivent inclure les classes Apex suivantes :
   
   {:.table.table-bordered}
   | Nom de la classe Apex |
   |:-------------------:|
   | galigeo.AnalyticsDataSetRestService |
   | galigeo.AnalyticsDataSourceRestService |

5. **Accès à la page Visualforce**

   Les pages Visualforce suivantes doivent être accessibles par l’administrateur :
   
   {:.table.table-bordered}
   | Nom de page Visualforce |
   |:-------------------:|
   | galigeo.CreateEditVisualDataSet |
   | galigeo.map         |
   | galigeo.mapmobile   |
   | galigeo.MapPage     |
   | galigeo.VisualDataSet |
   | galigeo.VizDataSetSharingRules |
   | galigeo.CustomFilterLooup |
   | galigeo.CustomSymbologyLookup |
   | galigeo.DataSourceDetails |
   | galigeo.MapObjectCreateWizard |
   | galigeo.mapObjectDetails |


## Seconde méthode : établir des règles d’accès en modifiant un profil

En fonction de la configuration votre organisation et des règles de sécurité, les administrateurs Salesforce peuvent attribuer des règles spéciales pour certains profils. Dans Galigeo for Salesfore, un utilisateur final n’a pas besoin de voir l’onglet « Galigeo Admin » mais uniquement l’onglet « Galigeo ». Il peut également modifier son Visual Data Set.
Pour cela, supposons que nous avons déjà un profil intitulé « Utilisateur final Galigeo ».

Rendez-vous dans le menu Configuration (en haut à droite) et choisissez « Profils » dans la section « Administrer/Gérer les utilisateurs » (panneau de gauche). Puis, cliquez sur « Modifier » :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-047.png){:.img.img-responsive.img-center}

Appliquez les autorisations d’accès aux objets, pages et classes comme défini dans la section antérieure, en prenant en compte le profil concerné.

## Ajouter un champ de géolocalisation

Le processus cartographique repose sur les coordonnées géographiques: latitude et longitude. Pour ajouter ces coordonnées aux objets que vous souhaitez cartographier, il faut planifier un processus de géocodage par lot. Les champs d’adresse d’un objet seront transformés en coordonnées géographiques venant alimenter un champ custom du type Geolocation.

Pour chacun des objets que vous souhaitez utiliser sur une carte, il vous faudra créer un nouveau champ Geolocation.

Dans la suite de ce document, nous vous montrons comment ajouter ce champ spécifique pour l’objet Standard Salesforce : Comptes. Le processus est le même pour tout autre objet (qu’il soit standard ou custom).

Rendez-vous sur **Configuration / Personnaliser / Comptes** et cliquez sur le lien **Champs** :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-048.png){:.img.img-responsive.img-center}

Cliquez sur le bouton **« Nouveau »** dans la section **« Champs personnalisés et relations de Compte »** pour créer un nouveau champ personnalisé :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-049.jpg){:.img.img-responsive.img-center}

Sélectionnez Geolocation comme type de données et cliquez sur **« Suivant »** pour continuer.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-050.png){:.img.img-responsive.img-center}

Saisissez une étiquette de champ. Choisissez d’afficher la latitude et longitude en format Décimal en précisant 8 comme nombre de décimales. Saisissez une description et un texte d’aide et cliquez sur **« Suivant »** pour continuer.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-051.png){:.img.img-responsive.img-center}

Définissez le niveau de sécurité du champ et cliquez sur **« Suivant »** pour continuer.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-052.png){:.img.img-responsive.img-center}

Précisez si ce nouveau champ apparaîtra dans la page de présentation de l’objet et cliquez sur **« Enregistrer »** pour continuer.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-053.png){:.img.img-responsive.img-center}

Le nouveau champ personnalisé **Account Geoloc** est maintenant créé.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-054.png){:.img.img-responsive.img-center}