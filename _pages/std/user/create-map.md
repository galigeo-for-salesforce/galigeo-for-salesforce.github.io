---
layout: sidebar
title: Créer une carte
categories: documentation
permalink: /create-map
---

## Créer une carte


Le point d’entrée de l’application est l’onglet Galigeo.
A partir de cet onglet, un utilisateur peut gérer (créer/modifier/supprimer) une ou plusieurs cartes.

### Qu’est-ce qu’une « carte » ?

Une « carte », dans le contexte de l’application, est un ensemble d’objets géographiques et d’analyses définies par l’administrateur de l’application. L’utilisateur peut construire ses propres cartes à partir de ces objets et les partager.

### Créer une carte

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/new1.png){:.img.img-responsive.img-center}

Cliquez sur le bouton **« Nouveau »** pour créer votre première carte.

La page de création se divise en trois parties :

1. La section d’information de base : l’utilisateur est invité à donner un nom à sa carte,
et à sélectionner s’il souhaite voir tous les objets auxquels il a accès ou seulement ceux dont il est propriétaire dans Salesforce.
	L’option « Utiliser le calendrier avancé » permet à l’utilisateur de gérer les événements en affichant le calendrier par semaine. Cette fonctionnalité est détaillée dans [Planifier des événements](#planifier-des-evenements).

	![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-015.png){:.img.img-responsive.img-center}

2. La section liste des objets géographiques associés : l’utilisateur sélectionne dans la liste des objets géographiques ceux qu’il souhaite visualiser sur sa carte.

	![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-016.png){:.img.img-responsive.img-center}

3. La section des Analyses thématiques associées : l’utilisateur sélectionne des analyses définies par l’administrateur. Elles apparaîtront dans la section « Analyse » de sa carte.

	![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-017.png){:.img.img-responsive.img-center}

	Il est possible pour l’administrateur de classer les analyses par catégorie. Un champ de recherche permet de filtrer la liste d’analyses.

Les deux listes à sélection multiple peuvent être utilisées comme décrit ci-dessous :

1. Sélectionnez une valeur que vous souhaitez ajouter

	![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-018.png){:.img.img-responsive.img-center}

2. Cliquez sur le bouton ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-019.png)

3. La valeur sélectionnée apparaît dans la colonne de droite

	![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-020.png){:.img.img-responsive.img-center}

Pour supprimer un objet. Sélectionnez un objet du panneau de droite et cliquez sur le bouton ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-021.png)

Vous pouvez désormais sauvegarder votre carte en cliquant sur « Enregistrer ».

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-021.png){:.img.img-responsive.img-center}

Une nouvelle carte apparaît maintenant dans votre liste de cartes, vous pouvez :

1. Actions :
	- ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-023.png) : cliquer pour modifier la carte
	- ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/new2.png) : Partager la carte
	- ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-024.png) : cliquer pour supprimer la carte
	- ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-025.png) : Accéder à la carte
2. Objets géographiques : la liste d’objets géographiques associés à la carte
3. Analyses : la liste des analyses associées à la carte
4. Voir le nom du propriétaire

### Partager une carte

L'écran accessible depuis l'onglet Galigeo prénsente les cartes auxquelles vous avez accès dans 2 sections :

- Cartes partagées avec moi
- Mes cartes

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/new3.png){:.img.img-responsive.img-center}

Voici les étapes à suivre pour partager une carte avec un ou plusieurs autres utilisateurs :

#### ![feet]({{ site.url }}/assets/foot.png) 1ère étape : Cliquez sur l'icône de partage ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/new2.png)

Sur l'écran de partage, cliquez sur le bouton "Ajouter".

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/share1.png){:.img.img-responsive.img-center}

#### ![feet]({{ site.url }}/assets/foot.png) 2ème étape : Sélectionnez le/les destinataire(s) du partage

Vous pouvez ajouter des utilisateurs :

- Par rôle : permet d'ajouter plusieurs utilisateurs à la fois. Les rôles correspondent à ceux définis dans votre hiérarchie des rôles Salesforce.
- Par utilisateur : pour sélectionner le ou les nom(s) des personnes à qui vous souhaitez rendre la carte accessible

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/share2.png){:.img.img-responsive.img-center}

Vous pouvez filtrer la liste des rôles ou des utilisateurs grâce au champ texte sur la droite. Pour ajouter un élément à la liste de droite, cliquez sur le nom ou le rôle puis sur ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-019.png). Il ne vous reste plus qu'à confimer en cliquant sur OK.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/share3.png){:.img.img-responsive.img-center}

La carte a bien été partagée. Le destinataire peut maintenant la consulter depuis la section "Cartes partagées avec moi".

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/share5.png){:.img.img-responsive.img-center}

{:.table.table-bordered}
| ![notice]({{ site.url }}/assets/notice.png)  | Le destinataire d'une carte partagée peut la voir mais modification et suppression ne  peuvent être faites que par son propriétaire. |

