---
layout: sidebar
title: Installation du package
categories: documentation
permalink: /install-std
lang: fr
ref: install-std
---

# Installation du package

<iframe style="display:block;" class="img-center" width="560" height="315" src="https://www.youtube.com/embed/Bko-QyY0tjs" frameborder="0" allowfullscreen></iframe>

## Démarrer l’installation

{:.table.table-bordered}
| ![warning]({{ site.url }}/assets/warning.png)     | **Important** : Pour toute mise à jour depuis une version antérieure à la version 1.103, il est nécessaire de définir un modèle de partage "privé" pour l'objet "Visual DataSet" dans les "Valeurs par défaut à l'échelle de l'organisation". |

Rendez-vous sur la [page Galigeo de l’AppExchange](https://appexchange.salesforce.com/listingDetail?listingId=a0N3000000B4Nj6EAF).

Pour démarrer l’installation du package, cliquez sur **« Get It Now »** sur la droite.


![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-018.jpg){:.img.img-responsive}

## Vous connecter

Connectez-vous en utilisant vos identifiants Salesforce ou en tant que visiteur.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-021.png){:.img.img-responsive}


Si vous n’êtes pas connecté à votre compte Salesforce, vous serez redirigé vers la page de connexion de Salesforce.

Pour découvrir l’application Galigeo, nous vous recommandons d’utiliser un compte visiteur (valable pour 30 jours). Une démo est déjà installée ... Vous pouvez vous rendre directement au paragraphe [Vérifier les packages installés](#vrifier-les-packages-installs) de ce document.

## Méthode d’installation

Après vous être connecté à l’aide de vos identifiants Salesforce, choisissez si vous voulez installer l’application dans votre environnement de production ou dans votre Sandbox :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-024.png){:.img.img-responsive.img-center}

## Accepter les conditions d’utilisation

Une fenêtre affiche le détail des informations de la version de l’application Galigeo prête à être installée ainsi que le compte sur lequel elle sera installée.

Confirmez en cochant la case « I have read and agree to the terms and conditions » et cliquez sur le bouton « Confirm and Install! ».

La version du package est destinée à évoluer au fur et à mesure des améliorations.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-027.png){:.img.img-responsive.img-center}

## Configuration de sécurité

Sélectionnez qui va accéder à l’application :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-028.png){:.img.img-responsive.img-center}

## Approuver l’accès de sites Web tiers

Le package a besoin d’accéder à des services Web tiers pour les opérations de géocodage.

1. Sélectionnez la case **« Oui, accorder l’accès a ces sites Web tiers »**
2. Cliquez ensuite sur **«Continuer»** :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-029.png){:.img.img-responsive.img-center}

## Au cours de l’installation du package

Le package débute son installation :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-030.png){:.img.img-responsive.img-center}

L’installation peut parfois prendre quelques minutes, auquel cas, l’écran suivant apparaît :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-031.png){:.img.img-responsive.img-center}

## Vérifier les packages installés

Après avoir reçu un email vous confirmant l’installation, pour vérifier si le package a été installé, allez à : **Configuration \| Packages Installés**.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-032.png){:.img.img-responsive.img-center}

Cliquez sur le lien « Gérer les licences » :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-034.png){:.img.img-responsive.img-center}

Pour ajouter des utilisateurs :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-035.png){:.img.img-responsive.img-center}

{:.table.table-bordered}
| ![notice]({{ site.url }}/assets/notice.png)  |Pour les administrateurs, l’application Galigeo est désormais visible dans la liste des applications (en haut à droite) |

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-036.png){:.img.img-responsive.img-center}

**Les onglets « Galigeo Admin » et « Galigeo » sont disponibles pour configurer vos cartes (voir «Le guide d’administration»). Si vous avez installé l’application utilisant un compte de visiteur, les deux onglets sont déjà ajoutés.**

[Le chapitre suivant]({{ site.url }}/post-install-std) explique comment mettre à disposition d’autres utilisateurs de votre organisation Salesforce l’application.
