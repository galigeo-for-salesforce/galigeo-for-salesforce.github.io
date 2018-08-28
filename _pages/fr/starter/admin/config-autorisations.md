---
layout: sidebar-starter
title: Configuration des autorisations
categories: starter
permalink: /config-autorisations
lang: fr
ref: config-perm-sets
---

# Configuration des autorisations

<iframe style="display:block;" class="img-center" width="560" height="315" src="https://www.youtube.com/embed/ZzB3Q2XV9xA" frameborder="0" allowfullscreen></iframe>

Dans les articles précédents, nous avons mis en place différents éléments dont trois pages Visualforce :
- GeocodePDV
- GeocodePDVLocationSF1
- GeocodePDVQuickActionSF1

Pour éviter qu'un message d'erreur indiquant que l'utilisateur ne possède pas les droits suffisants pour visualiser les différents composants, nous devons mettre en place un ensemble d'autorisations.

1.	Dans **Configuration > Gérer les utilisateurs > Ensemble d'autorisations**, cliquer sur le bouton "nouveau"
2.	Dans la zone de saisie de l'étiquette, entrer la valeur "Geocode Permissions set".
3.	Cliquer sur le bouton "Enregistrer".

	![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_perm_sets-create.png){:.img.img-responsive.img-center.img-bordered}

4.	Dans la section "Application", cliquer sur "Accès à la page Visualforce"
5.	Cliquer sur le bouton "Modifier"
6.	Activer les pages Visualforce en fonction de vos besoins:
	- Pour la version classique : sélectionner la page "GeocodePDV"
	- Pour la version mobile : sélectionner les pages " GeocodePDVLocationSF1" et "GeocodePDVQuickActionSF1"
7.	Cliquer sur le bouton "Enregistrer"

	![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_perm_sets-vf_page_access.png){:.img.img-responsive.img-center.img-bordered}

Maintenant que l'ensemble d'autorisations est paramétré, il faut attribuer aux utilisateurs adéquats cet ensemble.

1.	Dans **Configuration > Gérer les utilisateurs > Utilisateurs**, cliquer sur un utilisateur
2.	Dans la section "Attributions d'ensemble d'autorisations", cliquer sur le bouton "Modifier les attributions"
3.	Parmi la liste, activer l'ensemble " Geocode Permissions set "
4.	Cliquer sur le bouton "Enregistrer".

	![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_perm_sets-users.png){:.img.img-responsive.img-center.img-bordered}
