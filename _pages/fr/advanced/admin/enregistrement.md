---
layout: sidebar-advanced
title: Enregistrement de l'application
categories: documentation
permalink: /enregistrement
lang: fr
ref: enregistrement
---

## Introduction

L’administration de Galigeo for Salesforce Advanced Édition se fait dans l’onglet « Galigeo Admin (full) ».

La page contient deux onglets :

1. Organisation : permet à l’administrateur d’enregistrer/désenregistrer son organisation dans l’application Territory Management Designer (TM Designer App), hébergée sur Heroku, et de déclarer des utilisateurs avec leurs rôles associés à l’application TM Designer.

2. Secteurs : A partir d’ici, l’administrateur peut gérer (créer/rafraichir ou supprimer) des secteurs de base utilisés dan l’application TM Designer, peuplée avec des métriques Salesforce.


## Enregistrer votre organisation

La première chose à faire est d’enregistrer votre organisation dans la base de données de l’application Territory Management. Pour cela, sélectionnez l’application « Galigeo for Salesforce », cliquez sur l’onglet « Galigeo Admin (full) » et activez l’onglet « Organisation » s’il n’est pas activé.

Vous devriez voir l’écran ci-dessous, qui mentionne que votre organisation n’est pas encore enregistrée.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-016.png){:.img.img-responsive.img-center}

Cliquez sur le bouton « Register org ». Après avoir effectué la configuration, l’écran suivant apparaît :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-019.png){:.img.img-responsive.img-center}

Cette page est divisée en deux sections :

- Informations sur votre organisation avec les licences utilisées par type. Par défaut, lorsqu’une organisation est enregistrée, il y a deux licences Designer et deux licences Stakeholder. Un Designer a un rôle TM_Admin ou un rôle TM_Owner. Un Stakeholder a le rôle TM_Stakeholder.
- Un utilisateur doit faire partie de cette liste pour utiliser l’application.