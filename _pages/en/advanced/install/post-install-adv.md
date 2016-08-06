---
layout: sidebar
title: Post installation du package
categories: documentation
permalink: /post-install-advanced-en
lang: en
ref: post-install-advanced
---

## Etapes de post-installation

Comme mentionné dans la [section d'installation](/install-advanced), ce package est une extension de l’application Galigeo Visit Planning.

Plusieurs étapes sont nécessaires pour terminer cette installation :

- Modifiez le package de base pour inclure les nouveaux onglets
- Assigner des autorisations

### Modification du package de base

Rendez-vous dans 
**Configuration | Créer | Applications** et modifiez le **Galigeo Visit Planning** package.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-install/Galigeo4SFDC_-_Installati-047.png){:.img.img-responsive.img-center}

L'Advanced édition contient trois onglets qui doivent être ajoutés à l’application Standard Edition (Galigeo). Ces onglets sont :

- Galigeo Admin (Advanced)
- Territory Design
- Records Assignment

Ajoutez ces onglets aux onglets déjà sélectionnés et cliquez sur « Enregistrer » :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-install/Galigeo4SFDC_-_Installati-048.png){:.img.img-responsive.img-center}

### Accorder l’accès à l’aide des ensembles d’autorisations

Cette application étant une extension de Galigeo Standard édition, il est possible que l’accès soit déjà accordé.

### Créer/Actualiser le profil d’utilisateur

En fonction de la configuration des règles de sécurité de votre organisation, les administrateurs Salesforce vont donner des autorisations particulières à un profil donné. 

Cette application a trois nouveaux onglets :

- **Galigeo Admin (Advanced)** : vous permet de gérer votre organisation : vous pouvez voir les types et le numéro de licence de Territory Design et vous pouvez gérer vos utilisateurs
- **Territory Design** : vous permet de concevoir des territoires
- **Records Assignment** : sur cet onglet, un utilisateur peut assigner en masse des enregistrements en fonction d’un propriétaire de territoire d’un projet de territoire.

En fonction des actions que vous souhaitez rendre disponibles aux utilisateurs, il peut être nécessaire de ne pas donner aux utilisateurs l’accès aux onglets **Galigeo Admin (Advanced)** et **Territory Design**, mais uniquement à l’onglet **Records Assignment**.

Pour mettre ça en place, supposons que nous avons un profil « Galigeo utilisateur final ». Cliquez sur « Modifier ».

Allez à la section « Paramètres d’onglet personnalisés » et activez l’onglet « Records Assignment » pour ce profil :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-install/Galigeo4SFDC_-_Installati-049.png){:.img.img-responsive.img-center}

Et cliquez sur « Enregistrer ».

Plus généralement, pour chaque page VisualForce voici la liste des classes Apex utilisées et l’onglet où chacune est incluse :

{:.table.table-bordered.table-condensed.table-small}
| Visualforce Page | Apex Class | Custom Object | Tab Label | Tab Name |
| ---------------- | ---------- | ------------- | --------- | -------- |
| TM_Admin				 | TMAdminController <br> TMOrgManagementController | TM_User__c | Galigeo Admin(Admin) | TM_Admin |
| TM_CreateEditUser | TMCreateEditUserController |  |  |  |
| Tm_app				 | TMMapController |  | Territory Design | TM_App |
| TM_Assignment		| TMAssignmentController <br> TMBatchAssignment |  | Records Assignment | Territory_Assignment |

Merci de vous referer à ce tableau lorsque vous configurez la sécurité d’accès pour votre profil.

