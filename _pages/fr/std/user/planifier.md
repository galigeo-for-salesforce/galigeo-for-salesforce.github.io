---
layout: sidebar
title: Optimisation d'itinéraire
categories: documentation
permalink: /planifier
lang: fr
ref: planifier
---

# Planifier des événements

<iframe style="display:block;" class="img-center" width="560" height="315" src="https://www.youtube.com/embed/lObRYU-E9CQ" frameborder="0" allowfullscreen></iframe>

## Ajouter un événement au calendrier Salesforce

Pour créer un événement, cliquez sur l’icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-047.png) dans la liste d’[actions](/actions) de l’objet.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-new_event_action-fr.png){:.img.img-responsive.img-center}

Lorsque le formulaire de création d’un événement apparaît, complétez les champs obligatoires pour créer votre événement.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-new_event_modal-fr.png){:.img.img-responsive.img-center}

## Ajouter plusieurs événements au calendrier Salesforce

### Planifier un itinéraire

Grâce à la planification d'itinéraires il est possible d'ajouter simultanément plusieurs événements au calendrier Salesforce.

Cliquez sur l’icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-084.png) dans la barre d’outils pour afficher le panneau d’itinéraire.

Pour ajouter un point à votre itinéraire, vous pouvez :
- Cliquer sur l’icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/icon.png) dans le panneau d'itinéraire pour sélectioner plusieurs objets à la suite en cliquant desssus (il devient alors actif et vert)
- Cliquer sur l’icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-057.png) dans la liste d’[actions](/actions) pour ajouter un objet

Lorsqu’un objet est ajouté à l’itinéraire, un numéro est ajouté au centre du marqueur correspondant.

Différentes options de calcul d'itinéraire sont proposées :
- En voiture ou à pied (optionnel)
- Calculé uniquement entre les objets ou depuis le dernier emplacement connu via géolocalisation
- Optimisé (modifie l’ordre des points de passage pour le chemin le plus efficient) ou non optimisé (conserve l’ordre des points de passage)

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-itinerary_points-fr.png){:.img.img-responsive.img-center}

Cliquez sur le bouton « Calculer » pour calculer l’itinéraire. L’itinéraire s’affiche sur la carte et un résumé du trajet apparaît en haut. 

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-088.png){:.img.img-responsive.img-center}

Cliquez sur « Voir détails » pour afficher les étapes de l’itinéraire.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-089.png){:.img.img-responsive.img-center}

Vous pouvez à tout moment retirer un point de l'itinéraire en cliquant sur la croix à droite du nom de l'objet.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-remove_object.png){:.img.img-responsive.img-center}

### Ajouter les événements d'itinéraire au calendrier

Pour ajouter l'ensemble des objets qui constituent votre itinéraire, cliquez sur "Ajouter au calendrier".

Pour l'ensemble de vos rendez-vous, sélectionnez ensuite :
- Date
- Sujet (la liste est définie dans votre calendrier Salesforce)
- Heure de premier rendez-vous
- Fin du RDV

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-itinerary_events-fr.png){:.img.img-responsive.img-center}

A noter que :
- Le premier RDV débute à 8h par défaut
- La durée des RDVs est de 60 min par défaut
- Le temps de trajet entre deux RDVs est arrondi au quart d'heure supérieur pour prendre en compte l'heure de début du prochain
- Un changement de l'heure de fin d'un RDV change automatiquement l'heure de début des suivants

### Evénements récurrents

Cliquer sur "Répéter la série d'événements" permet de rendre les événements récurrents selon une fréquence :

**Hebdomadaire**
Choisissez :
- La fréquence à laquelle ils vont se répéter en semaines
- Quels jours de la semaine du Lundi au Dimanche (plusieurs choix possibles)

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-recurr_events_weekly-fr.png){:.img.img-responsive.img-center}

**Mensuelle**
Choisissez :
- La fréquence à laquelle ils vont se répéter en mois
- Quel jour de la semaine du Lundi au Dimanche (un seul choix possible)
- Pour le jour de la semaine, si il s'agit du 1er, 2nd, 3ème, 4ème ou dernier du mois

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-recurr_events_monthly-fr.png){:.img.img-responsive.img-center}

Un clic sur le lien "[Date de fin]" permet de calculer automatiquement cette date en prenant compte les contraintes suivantes:
- Hebdomaire : Date de fin = (Date Courante) + 52 * intervalle (en semaines)
- Mensuelle : Date de fin = (Date Courante) + 60 * intervalle (en mois)

<div class="alert alert-info" role="alert"> <strong>Note :</strong> La date maximale de fin dépend du type de récurrence et est un paramètre imposé par Salesforce car il n'est pas possible de créer des événements récurrents sans fin.</div>

Dans le calendrier Galigeo les RDVs récurrents sont identifiables grâce à l'icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-recurr_events_icon.png) (idem dans l'application mobile).

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-recurr_events_cal-fr.png){:.img.img-responsive.img-center}

De même dans le calendrier Salesforce.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-recurr_events_cal_sf-fr.png){:.img.img-responsive.img-center}

## Gérer les événements dans le calendrier

Pour ouvrir le calendrier, cliquez sur l’icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-054.png). Une vue complète de la semaine est disponible sur la droite de la fenêtre et les événements précédemment créés y apparaissent :

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-cal-fr.png){:.img.img-responsive.img-center}

<div class="alert alert-info" role="alert"> <strong>Note :</strong> Seuls les événements dans une certaine plage de date apparaissent dans le calendrier. Celle-ci est de 30 jours dans le passé, 60 jours dans le futur par défaut, et peut être modifiée dans les options de la page d'administration.</div>

Tous les événements y sont directement déplaçables par glisser-déposer. Leur durée est également modifiable en tirant le bas d'un événement.

En cliquant sur une date du calendrier, vous filtrez la carte pour n’afficher que les objets pour lesquels il y a un rendez-vous à cette date. La carte sera centrée sur ces points (pour annuler la sélection cliquez à nouveau sur la date).

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-cal_itinerary-fr.png){:.img.img-responsive.img-center}

Vous pouvez savoir quels sont les objets ayant des rendez-vous. Une étoile ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-marker_event.png) dans le centre du marqueur indique si un événement y est associé.
Les événements pris en compte sont ceux des **30 derniers jours et des 60 jours à venir**.

Pour voir le calendrier d’un collaborateur, cliquez sur « Changer » en haut du calendrier.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-cal_change_collab-fr.png){:.img.img-responsive.img-center}

Sélectionnez un collaborateur en cliquant sur son nom, pour faire apparaître son calendrier. Un champ de recherche permet également de filtrer cette liste.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-cal_change_collab_modal-fr.png){:.img.img-responsive.img-center}

Si vous avez les droits nécessaires, vous pouvez créer ou modifier les événements de ce calendrier.
