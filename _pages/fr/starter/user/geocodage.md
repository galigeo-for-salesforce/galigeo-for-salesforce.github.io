---
layout: sidebar-starter
title: Géocodage
categories: starter
permalink: /geocodage
lang: fr
ref: geocoding
---

# Géocodage

---

## Dans cet article
{:.no_toc}

* Table of Contents
{:toc}

---

## Géocodage à partir d'une adresse

Etant positionné sur la fiche de présentation d'un PDV, l'utilisateur peut lancer le géocodage en cliquant sur l'icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-icone.png) pour faire apparaître l'interface et cliquer sur le bouton "Géocoder". Le composant cherche à localiser l'objet à partir de l'adresse existante.

Trois cas se présentent :
1. Le géocodage ne trouve pas l'adresse : l'utilisateur est invité à corriger les informations
2. Le géocodage trouve une adresse : la carte se positionne automatiquement sur l'adresse trouvée et les champs de l'adresse normalisée sont remplis
3. Plusieurs adresses sont trouvées : elles sont affichées dans une liste d'adresses candidates pour laisser le soin à l'utilisateur de choisir celle qui lui convient.

<p class="text-center">
<img src="/assets/img-str-user/geocodage-adresse.png" class="img img-bordered">
<img src="/assets/img-str-user/geocodage-adresse2.png" class="img img-bordered">
</p>

Lorsqu'une adresse candidate est choisie par l'utilisateur, un marqueur est ajouté à la carte et la carte est centrée sur cette position. Les valeurs de l'adresse normalisée sont alors automatiquement renseignées.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-adresse3.png){:.img.img-responsive.img-center.img-bordered}

Une zone de saisie de texte libre permet à l'utilisateur de rechercher une adresse. Si plusieurs adresses sont candidates, elles sont affichées dans une liste pour permettre à l'utilisateur de choisir celle qui lui convient.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-adresse4.png){:.img.img-responsive.img-center.img-bordered}

L'utilisateur peut à tout moment corriger la position en déplaçant le marqueur sur la carte. Un géocodage inversé permet alors d'obtenir l'adresse normalisée et ainsi récupérer des valeurs manquantes (dans cet exemple, il manque le numéro de la rue).

Comme précédemment, une fois l'adresse choisie, la carte se positionne aux coordonnées de l'adresse et les champs de l'adresse normalisée sont renseignés.

## Géocodage à partir de la position courante

Un clic sur l’icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-position_courante_icone.png) permet d'utiliser la position courante de l'utilisateur (GPS dans le cas de l'utilisation à partir d'un appareil mobile) pour retrouver l'adresse et renseigner automatiquement les champs de l'adresse normalisée quand ils sont disponibles.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-position_courante.png){:.img.img-responsive.img-center.img-bordered}

La position courante de l'utilisateur est matérialisée par un petit cercle bleu. L'utilisateur peut affiner la localisation en déplaçant le marqueur sur la carte.

## Enregistrement des informations

En fonction des droits qu'il possède sur l'objet Salesforce et de ces champs, l'utilisateur peut choisir d'enregistrer l'adresse normalisée en cochant la case "Enregistrer l'adresse normalisée".

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-adresse_norm_options.png){:.img.img-responsive.img-center.img-bordered}

<div class="alert alert-info" role="alert"> <strong>Note :</strong> Cette option n'est active que si l'utilisateur possède les droits d'écriture et/ou de mise à jour sur les champs de l'adresse normalisée et du champ de localisation paramétrés dans le composant. Si vous souhaitez avoir accès à cette option, veuillez contacter votre administrateur Salesforce.</div>

En cliquant sur le bouton "**Enregistrer**", l'utilisateur valide la position du **PDV**. Les coordonnées géographiques (latitude et longitude) sont automatiquement prises en compte. Seul le choix d'enregistrer l'adresse normalisée est laissé à l'appréciation de l'utilisateur. 

Une fois les informations sauvegardées, l'utilisateur peut visualiser les coordonnées et l'adresse normalisée (dans le cas où elle a été sauvegardée) en cliquant sur le menu « Localisation ».

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-adresse_norm.png){:.img.img-responsive.img-center.img-bordered}

## Modification manuelle de la position

Lorsqu'un utilisateur est dans une page de présentation d'un **PDV** déjà localisé, le composant se sert des coordonnées précédemment enregistrée pour centrer la carte. Il est possible de modifier la position du **PDV** en cliquant sur le menu « Géocodage » pour faire apparaître l'interface et cliquer sur le bouton "**Corriger**".

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-correction_position.png){:.img.img-responsive.img-center.img-bordered}

Afin de corriger la position du PDV, l'utilisateur peut :
- Déplacer le marqueur sur la carte. Les informations de l'adresse normalisée sont alors mises à jour
- Entrer manuellement une adresse tel que c'est décrit précédemment
- Utiliser sa position courante en cliquant sur le bouton   

Pour chacune de ces actions, les informations de l'adresse normalisée sont mises à jour.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-correction_position2.png){:.img.img-responsive.img-center.img-bordered}

## Recherche à proximité

Lorsqu'un utilisateur est dans une page de présentation d'un **PDV** et qu'une position courante est définie (soit parce que le PDV est déjà localisé, soit après une recherche d'adresse ou soit par localisation de l'utilisateur), il est possible de rechercher des PDV se trouvant à une certaine distance. 
L'utilisateur accède à l'interface de recherche de proximité en cliquant sur l'icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-proximite_icone.png) pour faire afficher l'interface.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-proximite.png){:.img.img-responsive.img-center.img-bordered}

L'interface est composée de :
- Une zone de saisie du rayon de recherche. Une valeur par défaut a été paramétrée. 
- L'unité de distance présentée sous forme de liste
- Deux boutons:
    - ![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-proximite_icone_recherche.png) Effectue la recherche avec les paramètres renseignés
    - ![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-proximite_icone_annule_recherche.png) Annule la recherche: vide la liste des éléments à proximité et supprime de la carte ces éléments

Le résultat de la recherche de voisins est affiché dans une liste et sur la carte. L'utilisateur est informé du nombre d'éléments se trouvant dans le voisinage. Une limite du nombre maximal d'éléments à renvoyer dans le résultat est paramétrée dans le composant. 

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-proximite_resultat_recherche.png){:.img.img-responsive.img-center.img-bordered}

L'utilisateur peut visualiser et obtenir des informations sur un voisin en cliquant soit dans la liste, soit directement sur un marqueur de la carte. Lorsqu'un marqueur est sélectionné sur la carte, l'élément correspondant dans la liste est aussi sélectionné et rendu visible.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-proximite_resultat_recherche2.png){:.img.img-responsive.img-center.img-bordered}

<div class="alert alert-info" role="alert"> <strong>Note :</strong> Les informations affichées dans la fiche d'information ont été paramétrées par votre administrateur Salesforce.<br>
Les seules unités de distance supportées par Salesforce sont les Kilomètres (km) et Miles (mi).
</div>
