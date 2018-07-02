---
layout: sidebar-advanced
title: Projets de Territory Management
categories: documentation
permalink: /projet-adv
lang: fr
ref: projet-adv
---

# Gestion des projets

---

## Dans cet article
{:.no_toc}

* Table of Contents
{:toc}

---

## Créer un projet

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-005.jpg){:.img.img-responsive.img-center}


La création d’un projet se fait en cliquant sur le bouton ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-006.png)

La fenêtre de création de projet s’ouvre et offre deux options :

- Démarrer à partir d’un Projet vierge

	Une couche de secteurs sur laquelle se basera le projet doit être sélectionnée. Pour rappel, un projet est basé sur une unique couche de secteurs. Il est également possible de sélectionner une couche de ponctuels pour la visionner dans le projet.

	Les couches de points sont définies dans le module d’administration (onglet Galigeo Admin).

- Créer une copie d’un projet existant

	Une barre de recherche permet de filtrer par nom la liste des projets disponibles.

	Pour terminer la création du projet, il faut saisir un nom dans la nouvelle fenêtre qui apparaît. A noter qu’il n’est pas possible de donner au nouveau projet le nom d’un projet déjà existant. Dans ce cas, un message d’erreur s’affiche.

## Ouvrir/Supprimer un projet

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-007.png){:.img.img-responsive.img-center}

L’ouverture d’un projet se fait à l’aide du bouton ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-008.png)

La liste des projets disponibles s’affiche, une barre de recherche permet de filtrer les projets par nom.

Dans cette fenêtre, on peut également supprimer un projet à l’aide du bouton  ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-009.png).

## Importer un projet

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-010.jpg){:.img.img-responsive.img-center}

Il est possible de créer un projet à partir d’un fichier CSV ou XLS. Le fichier doit contenir une liste de correspondances secteurs/territoires. L’import du fichier se fait à l’aide du bouton ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-011.png).
 
Pour les fichiers CSV, les délimiteurs acceptés sont « ; » ou « , ». Attention, le format XLSX n’est pas supporté. Si le fichier sélectionné est valide, le message suivant apparaît : ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-012.png)

Ensuite, plusieurs informations doivent être renseignées :

- La colonne contenant les identifiants de secteurs (code INSEE pour les communes, codes postaux, etc.) - obligatoire
- La colonne contenant les noms de territoires auxquels appartiennent les secteurs - obligatoire
- La colonne contenant les noms des collaborateurs assignés aux territoires - facultatif
- Le nom du projet – obligatoire
- La couche que le secteur utilise. Cette couche doit correspondre aux secteurs contenus dans le fichier – obligatoire

## Fusionner des projets

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-013.png){:.img.img-responsive.img-center}

Il est possible de fusionner deux projets qui partagent la même couche de secteurs, c’est-à-dire de copier le contenu d’un projet (le projet source) vers un autre projet (le projet cible). 

Pour ce faire, dans la liste des projets, l’utilisateur doit cliquer sur la flèche située à droite du projet cible et puis sur le bouton ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-014.png)

Dans la fenêtre qui suit, il faut sélectionner le projet source et valider la sélection. La liste des projets affichés ne contient que les projets compatibles qui partagent la même couche de secteurs que le projet cible.

Pour que la fusion se fasse correctement, il faut qu’il n’y ait pas d’ambiguïté entre les deux projets, leurs territoires ne doivent donc pas :

- Se chevaucher (du point de vue géographique)
- Avoir de noms identiques

## Activer un projet

Pour modifier un projet, il faut cliquer sur la flèche à droite du projet puis sur le bouton ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-015.png).

Le projet destiné à être modifié s’affiche dans la fenêtre du bas. Le titre du projet devenu actif passe en vert dans la liste de projets.

## Enregistrer un projet

L’enregistrement d’un projet se fait à l’aide du bouton ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-016.png) ou à l’aide de la combinaison de touches Ctrl-S.

Attention, si, au même moment, une autre personne modifie le projet, il n’est pas possible de l’enregistrer. Lorsque c’est le cas, l’icône d’enregistrement s'affiche comme ceci : ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-017.png).

Attention, si le navigateur se ferme ou si la page est rechargée, les modifications seront perdues. Aussi pensez à sauvegarder régulièrement votre projet.

## Exporter un projet

L’exportation d’un projet se fait à l’aide du bouton ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-018.png)

Une fenêtre s’ouvre et permet de choisir entre deux options d’exportation possibles :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-019.jpg){:.img.img-responsive.img-center}

- Un *shapefile des territoires*. La géométrie des territoires et leurs attributs (nom du territoire, collaborateur, indicateurs) sont exportés en tant shapefile. Seule la couleur des territoires n’est pas exportée.

- Un *fichier CSV*. Chaque ligne correspond à un secteur. Tous les secteurs assignés à un territoire dans le projet sont exportés. Chaque ligne contient toutes les informations disponibles sur ce secteur (l’équivalent du tableau de secteurs situé en bas à droite de l’interface).

<p class="note"><strong>Note:</strong> Seuls les territoires non filtrés sont pris en compte lors de l’exportation (voir la section [« Visualisations »](/visualisations-adv) pour plus d’informations).</p>