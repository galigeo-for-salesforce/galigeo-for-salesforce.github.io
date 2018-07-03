---
layout: sidebar-starter
title: Géocodage sur mobile
categories: starter
permalink: /geocodage-app-mobile
lang: fr
ref: geocoding-mobile-app
---

# Géocodage sur mobile

Cet article décrit les fonctionnalités du composant de géocodage  pour l'application mobile (anciennement Salesforce1 ou SF1).

## Recherche à proximité

En fonction du paramétrage effectué du composant de géocodage et la mise à disposition de l'application Salesforce1, un utilisateur peut accéder à une application qui permet d'afficher dans un périmètre donné une liste de PDV. 
Supposons que nous soyons un utilisateur ayant accès à Salesforce1 et qu'une application nommée "**My PDV**" ait été paramétrée.

L'utilisateur aurait dans son menu Salesforce1 :

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocoding_mobile_app-pdv.png){:.img.img-responsive.img-center.img-bordered}

Au lancement de l'application, l'utilisateur est géolocalisé et une recherche des **PDV** à proximité est automatiquement lancée avec des paramètres par défauts dépendants du paramétrage du composant par l'administrateur Salesforce.
La position courante de l'utilisateur est matérialisée par un cercle bleu. Le résultat est affiché sur la carte. 

### Géocodage à partir d'une adresse

L'application Salesforce1 étant destinée à une utilisation sur appareil mobile, lorsque l'utilisateur lance le composant de géocodage, la position courante de celui-ci est matérialisée par un cercle bleu.
La zone au-dessus de la carte présente les informations d'adresse renseignées pour le PDV courant.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocoding_mobile_app-proximite.png){:.img.img-responsive.img-center.img-bordered}

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocoding_mobile_app-proximite2.png){:.img.img-responsive.img-center.img-bordered}

Un clic sur le bouton ![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocoding_mobile_app-proximite_icone.png)affiche la liste des résultats de la recherche ainsi que la distance de recherche.
Les paramètres sont les mêmes que ceux pour la version sur un poste fixe.
Il est possible de changer la distance et de relancer une recherche.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocoding_mobile_app-proximite_liste.png){:.img.img-responsive.img-center.img-bordered}

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocoding_mobile_app-proximite_fiche_info.png){:.img.img-responsive.img-center.img-bordered}

Un clic sur un élément de la liste ou un objet sur la carte permet de sélectionner cet objet er d’afficher sa fiche d'information. 
En cliquant sur le nom de l'objet dans la fiche d'information, l'utilisation peut visualiser sa fiche de présentation SF1.

## Géocodage

Le géocodage d'un PDV dans Salesforce1 est accessible à partir d'une action rapide depuis la fiche de présentation en cliquant sur l'icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocoding_mobile_app-action_rapide_icone.png) (l'icône est susceptible d'être différente en fonction du paramétrage qui a été effectué).

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocoding_mobile_app-action_rapide.png){:.img.img-responsive.img-center.img-bordered}

### Géocodage à partir d'une adresse

L'application Salesforce1 étant destinée à une utilisation sur appareil mobile, lorsque l'utilisateur lance le composant de géocodage, la position courante de celui-ci est matérialisée par un cercle bleu.
La zone au-dessus de la carte présente les informations d'adresse renseignées pour le PDV courant.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocoding_mobile_app-adresse.png){:.img.img-responsive.img-center.img-bordered}

L'utilisateur peut effectuer le géocodage en cliquant sur le bouton "**Géocoder**".

Le composant cherche à localiser l'objet à partir de l'adresse existante. Trois cas se présentent:
- Soit le géocodage ne trouve pas l'adresse: l'utilisateur est invité à utiliser la zone de saisie d'adresse libre
- Soit le géocodage trouve une adresse: la carte se positionne automatiquement sur l'adresse trouvée et les champs de l'adresse normalisée sont remplis
- Soit plusieurs adresses sont trouvées: elles sont affichées dans une liste d'adresses candidates pour laisser le soin à l'utilisateur de choisir celle qui lui convient.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocoding_mobile_app-adresse2.png){:.img.img-responsive.img-center.img-bordered}

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocoding_mobile_app-adresse3.png){:.img.img-responsive.img-center.img-bordered}

Lorsqu'une adresse candidate est choisie par l'utilisateur, un marqueur est ajouté à la carte et la carte est centrée sur cette position. Les valeurs de l'adresse normalisée sont alors automatiquement renseignées.

L'utilisateur peut à tout moment corriger la position en déplaçant le marqueur sur la carte. Un géocodage inversé permet alors d'obtenir l'adresse.

Une zone de saisie de texte libre permet à l'utilisateur de rechercher une adresse. Si plusieurs adresses sont candidates, elles sont affichées dans une liste pour permettre à l'utilisateur de choisir celle qui lui convient.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocoding_mobile_app-adresse4.png){:.img.img-responsive.img-center.img-bordered}

Lorsqu'une adresse choisie, la carte se positionne aux coordonnées de l'adresse et les champs de l'adresse normalisée sont renseignés.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocoding_mobile_app-adresse5.png){:.img.img-responsive.img-center.img-bordered}

### Géocodage à partir de ma position

En cliquant sur le bouton "**Utiliser ma position**", la position courante de l'utilisateur est utilisée pour retrouver l'adresse et renseigner automatiquement les champs de l'adresse.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocoding_mobile_app-position.png){:.img.img-responsive.img-center.img-bordered}

### Modification manuelle de la position

L'accès à la modification manuelle de la position est identique à celui pour géolocaliser un **PDV**, i.e. à partir de l'action rapide paramétrée. A la différence que cette fois-ci, l'utilisateur clique sur le bouton "**Corriger**" pour effectuer la modification.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocoding_mobile_app-correction_position.png){:.img.img-responsive.img-center.img-bordered}

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocoding_mobile_app-correction_position2.png){:.img.img-responsive.img-center.img-bordered}

Afin de corriger la position du PDV, l'utilisateur peut:
- Déplacer le marqueur sur la carte pour corriger la position et obtenir les informations de l'adresse normalisée.
- Entrer manuellement une adresse.
- Utiliser sa position courante en cliquant sur le bouton "**Utiliser ma position**".

Pour chacune de ces actions, les informations de l'adresse normalisée sont actualisées.

### Enregistrement des informations

En fonction des droits qu'il possède sur l'objet Salesforce et de ces champs, l'utilisateur peut choisir d'enregistrer l'adresse normalisée en cochant la case "Enregistrer l'adresse normalisée".

<div class="alert alert-info" role="alert"> <strong>Note :</strong> Cette option n'est active que si l'utilisateur possède les droits d'écriture et/ou de mise à jour sur les champs de l'adresse normalisée et du champ de localisation paramétrés dans le composant. Si vous souhaitez avoir accès à cette option, veuillez contacter votre administrateur Salesforce.</div>

En cliquant sur le bouton "**Enregistrer**", l'utilisateur valide la position du **PDV**. Les coordonnées géographiques (latitude et longitude) sont automatiquement prises en compte. Seul le choix d'enregistrer l'adresse normalisée est laissé à l'appréciation de l'utilisateur. 
Si l'enregistrement ne rencontre aucun problème, l'utilisateur est renvoyé vers la fiche de présentation du **PDV**.

En cliquant sur le bouton "**Annuler**", l'utilisation revient à la fiche de présentation du PDV.