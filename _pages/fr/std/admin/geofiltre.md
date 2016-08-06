---
layout: sidebar
title: Définir un géofiltre
categories: documentation
permalink: /geofiltre
lang: fr
ref: geofiltre
---

## Définir un géofiltre

Un géofiltre est un élément d’un objet géographique qui permet de filtrer les données affichées sur une carte.

Dans ce chapitre nous allons voir comment :

1. Créer un géofiltre
2. Créer une liste hiérarchique de géofiltres

Pour ajouter un géofiltre, accédez aux informations détaillées d’un objet géographique et cliquez sur le bouton   dans la section « Filtres ».

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-060.png){:.img.img-responsive.img-center}

### Créer un géofiltre

#### ![feet]({{ site.url }}/assets/foot.png) 1ère étape : Entrer le nom du géofiltre

Ce nom est seulement visible dans le panneau d’administration. Le libellé s’affichera dans l’interface utilisateur.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-063.png){:.img.img-responsive.img-center}

#### ![feet]({{ site.url }}/assets/foot.png) 2ème étape : Entrer les propriétés du géofiltre

Dans cette étape nous allons définir les propriétés du géofiltre :

- La symbologie permet de représenter les données sur la carte. Utilisez l’icône de
recherche pour sélectionner une symbologie appropriée. Cliquez sur l’icône de recherche pour afficher la liste de symboles disponibles :

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-066.jpg){:.img.img-responsive.img-center}

Si aucun symbole n’est disponible, cliquez sur l’onglet « Create » pour en créer un nouveau.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-067.png){:.img.img-responsive.img-center}

Pour définir une symbologie, renseignez :

- Un nom
- Une couleur : par défaut la valeur est verte
- Optionnellement, une image

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-068.jpg){:.img.img-responsive.img-center}

En cliquant sur le texte d’entrée pour la couleur du marqueur, l’utilisateur peut spécifier le code de la couleur en hexadécimal ou sélectionner une couleur depuis la palette.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-069.jpg){:.img.img-responsive.img-center}

Une symbologie peut aussi être définie à partir d'une image.

Il y a deux façons de définir une symbologie utilisant une image.

1. La première option est d’utiliser une image de la bibliothèque fournie par Galigeo. Pour ce
faire, cliquez sur le bouton « Choisir une image » et sélectionnez-en une.
    ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-070.jpg){:.img.img-responsive.img-center}

2. La seconde option est d’utiliser des images stockées dans les fichiers partagés de votre organisation Salesforce.

    a. Télécharger des images
    Rendez-vous sur l’onglet « Documents » et cliquez sur « Créer un nouveau dossier », donnez un nom au dossier (exemple : Mes images customisées) et cliquez sur « Enregistrer ».

    ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-071.jpg){:.img.img-responsive.img-center}

    b. Cliquez sur le bouton «Nouveau document»

    c. Saisissez les informations, cochez l’option « Image accessible en externe », sélectionnez un fichier et cliquez sur le bouton « Enregistrer ».
  
    ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-072.png){:.img.img-responsive.img-center}

    {:.table.table-bordered}
    | ![warning]({{ site.url }}/assets/warning.png)     | Seuls les fichiers image du type PNG sont supportés. |

    d. Dans le panneau de création de symbole, cochez la case « Use custom images ». à la droite, vous trouverez un aperçu.
    
    ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-075.jpg){:.img.img-responsive.img-center}

    Choisissons notre image customisée « Mon icône 1 ». L’icône apparaît sur la carte située à droite. Ajustez les valeurs de taille (Size X et Size Y) et d’ancrage (Anchor X et Anchor Y) et placez le marqueur au centre de l’image.

    ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-076.jpg){:.img.img-responsive.img-center}

    Cliquez sur le bouton « Enregistrer » pour sauvegarder ce nouveau symbole.

    ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-077.jpg){:.img.img-responsive.img-center}

    Au sein de l’onglet « Rechercher », la nouvelle symbologie appelée « Jaune » est maintenant disponible. Cliquez dessus pour l’assigner au géofiltre.
    
    ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-078.png){:.img.img-responsive.img-center}

- Il est possible de définir une hiérarchie entre les géofiltres. Si le géofiltre sélectionné a un parent, sélectionnez-le en cliquant sur l’icône de recherche (plus de détails au paragraphe [Créer des géofiltres hiérarchiques](#crer-des-gofiltres-hirarchiques)).
- Sélectionnez la case à cocher « Actif au démarrage » pour activer le géofiltre à l’ouverture d’une carte utilisant cet objet géographique.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-079.jpg){:.img.img-responsive.img-center}

#### ![feet]({{ site.url }}/assets/foot.png) 3ème étape : Spécifier les critères du géofiltre

Dans cette section nous définissons comment filtrer les données de l’objet géographique.
Par exemple, le géofiltre ci-dessous sélectionne tous les comptes où le champ BillingCountry n’est pas vide.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-082.png){:.img.img-responsive.img-center}

Il est possible d’ajouter d’autres critères en cliquant sur le lien « Ajouter un critère » et en complétant le champ texte « Logique du filtre » comme indiqué dans l’exemple ci-dessous.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-083.png){:.img.img-responsive.img-center}

Sélectionnez la case à cocher « Full SOQL condition » pour définir votre propre requête de sélection. Votre sélection doit être faite sur un champ ID comme dans l’exemple ci-dessous.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-084.png){:.img.img-responsive.img-center}

La requête finale utilisera cette requête SOQL comme sous-requête dans la clause WHERE afin d’aboutir à l’exemple suivant :

```sql 
Select Name 
FROM Account 
Where Id in (Select AccountId FROM Opportunity WHERE StageName = 'Closed Won')
```

Vous pouvez trouver plus d’informations sur comment définir une requête Salesforce [Object Query Language](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql.htm) (SOQL).

{:.table.table-bordered}
| ![warning]({{ site.url }}/assets/warning.png)     | Les requêtes sont soumises aux [Salesforce Governors Limits](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_gov_limits.htm). Assurez-vous de créer des filtres plus sélectifs afin de ne pas atteindre ces limites. |
| ![warning]({{ site.url }}/assets/warning.png) | En utilisant une requête Full SoQL, on doit interroger l’ID de l’autre objet. Evitez une requête de type : `Select Id FROM Account WHERE {A_CONDITION}` Parce que la requête sera générée comme ci-dessous : `Select Name FROM Account Where Id in (Select Id FROM Account WHERE {A_CONDITION})` et ne sera pas supportée par Salesforce. |

#### ![feet]({{ site.url }}/assets/foot.png) 4ème étape : Tester le filtre et ses conditions

Pour tester, cliquez sur « Tester la requête ». La clause WHERE ainsi que le nombre d’enregistrements satisfaisant la/les condition(s) s’afficheront

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-091.png){:.img.img-responsive.img-center}

Cliquez sur le bouton « Enregistrer » pour créer le géofiltre.
Le nouveau filtre apparaît désormais dans la section des filtres.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-092.png){:.img.img-responsive.img-center}

Dans l’interface cartographique, l’utilisateur retrouve ce filtre dont les données sont représentées par un marqueur jaune.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-095.jpg){:.img.img-responsive.img-center}

### Créer des géofiltres hiérarchiques

Nous avons défini des géofiltres permettant d’afficher tous les comptes où le champ BillingCountry n’est pas vide.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-098.png){:.img.img-responsive.img-center}

Prenons l’exemple des Comptes ci-dessus pour mettre en place la hiérarchie de géofiltres suivante :

- All Accounts
  - Inside USA (BillingCountry = 'USA')
    - Customer - Direct (Type='Customer - Direct')
    - Customer - Channel (Type='Customer - Channel)
  - Outside USA (BillingCouttry != 'USA')

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-099.png){:.img.img-responsive.img-center}

#### ![feet]({{ site.url }}/assets/foot.png) 1ère étape : Filtre « Inside USA »

Suivez les étapes utilisées pour créer le premier filtre :
- Nommez ce nouveau filtre
- Créez et assignez une nouvelle symbologie

Il vous faut maintenant définir ce nouveau filtre comme enfant du premier filtre. Pour cela, cliquez sur l’icône de recherche du champ « Filtre cartographique parent ».

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-102.png){:.img.img-responsive.img-center}

La fenêtre de recherche affiche tous les filtres existants pour l’objet géographique en cours de modification.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-103.png){:.img.img-responsive.img-center}

Cliquez sur le filtre « ALL_ACCOUNTS »

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-104.png){:.img.img-responsive.img-center}

Définissez la condition pour sélectionner uniquement les comptes où le champ BillingCountry est égal à 'USA'.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-105.png){:.img.img-responsive.img-center}

Testez le filtre et cliquez sur « Enregistrer ».
Le nouveau filtre est désormais disponible au sein de l’objet géographique :

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-106.png){:.img.img-responsive.img-center}

#### ![feet]({{ site.url }}/assets/foot.png) 2ème étape : Créer des filtres enfants de « Inside USA »

Suivez la procédure décrite dans la première étape et choisissez le filtre « Inside USA » en tant que filtre parent.

- Customer - Direct (Type='Customer - Direct')

    ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-109.png){:.img.img-responsive.img-center}
    ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-110.png){:.img.img-responsive.img-center}

- Customer - Channel (Type='Customer - Channel)
  
    ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-111.png){:.img.img-responsive.img-center}
    ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-112.png){:.img.img-responsive.img-center}

#### ![feet]({{ site.url }}/assets/foot.png) 3ème étape : Créer le filtre « Outside USA »

Suivez les instructions de la 1ère étape pour créer le filtre « Outside USA ».
Définissez le filtre « All Accounts » en tant que filtre parent et ajoutez une condition pour sélectionner les comptes où le champ BillingCountry est égal à ‘USA’.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-115.png){:.img.img-responsive.img-center}
![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-116.png){:.img.img-responsive.img-center}

Testez le filtre et cliquez sur « Sauvegarder ».
Tous les filtres sont désormais affichés selon l’arborescence que vous avez définie.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-117.png){:.img.img-responsive.img-center}

L’utilisateur final retrouve sur sa carte l’arborescence des filtres définis précédemment. Chaque filtre peut être activé indépendamment pour filtrer les Comptes.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-118.jpg){:.img.img-responsive.img-center}

Si la symbologie a été définie à partir d’images, les marqueurs affichés sur la carte seront de ce type : ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-119.png)

### Géofiltres combinés

Faisons l’hypothèse que sur l’objet géographique avec lequel nous travaillons, l’option « Combine filters » est activée et que l’arborescence des filtres a été définie telle que ci- dessous :

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-122.png){:.img.img-responsive.img-center}

- Country : *BillingCountry != null*
  - Others : *BillingCountry!='USA'*
  - USA : *BillingCountry='USA'*
- Type
  - Customer–Channel : *Type='Customer–Channel'*
  - Customer–Direct : *Type='Customer–Direct'*
  - Opportunies : *a full soql query returning AccountId for Opportunities*

Les symbologies assignées aux filtres dans le bloc « Country » seront utilisées pour dessiner les marqueurs sur la carte.

Si on active les filtres « Others » et « Inside USA » dans le premier bloc et « Customer – Channel » dans le deuxième, les deux requêtes suivantes s’exécutent :

1. La première retourne tous les comptes où le champ BillingCountry n’est pas égal à ‘USA’ et où le type est égal à 'Customer – Channel'
2. La seconde retourne tous les comptes où le champ BillingCountry est égal à 'USA' et où le type est égal à 'Customer – Channel'

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-123.jpg){:.img.img-responsive.img-center}

Plus généralement, voici le comportement quand il y a plusieurs filtres.
Faisons l’hypothèse que les filtres suivants sont définis et que tous les filtres sont activés :

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-127.png){:.img.img-responsive.img-center}

La carte affiche le résultat des trois requêtes suivantes :

1. C11 AND (C21 OR C22 OR C23) AND (Cn1 OR ... OR Cnx) avec la symbologie de C11 
2. C12 AND (C21 OR C22 OR C23) AND (Cn1 OR ... OR Cnx) avec la symbologie de C12 
3. C13 AND (C21 OR C22 OR C23) AND (Cn1 OR ... OR Cnx) avec la symbologie de C13









