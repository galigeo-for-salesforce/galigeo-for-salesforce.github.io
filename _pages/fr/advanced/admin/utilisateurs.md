---
layout: sidebar
title: Gestion des utilisateurs dans Galigeo Territory Management
categories: documentation
permalink: /utilisateurs
lang: fr
ref: utilisateurs
---

## Gestion des utilisateurs

### Rôles

Trois profils d'utilisateur sont disponibles :

- TM_Admin: ce rôle peut créer un projet, concevoir des territoires, affecter un territoire à un utilisateur (quel que soit son rôle dans l'application). Ce rôle peut voir tous les projets de l'organisation.
- TM_Owner: ce rôle a les mêmes droits que le rôle TM_Admin, à l'exception du fait qu’il ne voit que ses propres projets.
- TM_Stakeholder: n’a aucun droit. Ce rôle est utilisé pour déclarer un utilisateur qu'un Designer peut assigner à un territoire.

### Ajouter un utilisateur

Pour ajouter un utilisateur, cliquez sur le bouton « Add a user » :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-022.png){:.img.img-responsive.img-center}

Cliquez sur l’icône de recherche pour trouver un utilisateur dans votre organisation :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-025.png){:.img.img-responsive.img-center}

Dans la fenêtre de recherche de Salesforce, sélectionnez un utilisateur que vous désirez ajouter :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-028.png){:.img.img-responsive.img-center}

Sélectionnez un rôle (ce est rôle spécifique à l’application, il n'a pas de rappport avec les rôles Salesforce) :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-031.png){:.img.img-responsive.img-center}

Cliquez sur « Save ».
En cas d'erreur, celle-ci s’affiche. Sinon, vous êtes dirigé vers la page d’administration.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-034.png){:.img.img-responsive.img-center}

Un nouvel utilisateur a été déclaré en tant que Designer (avec le rôle TM_Admin).

Dans la colonne « Action », l’administrateur peut :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-035.png) Modifier l’utilisateur et seulement changer son rôle 

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-036.png) Supprimer l’utilisateur de l’application TM Designer