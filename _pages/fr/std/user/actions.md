---
layout: sidebar
title: Actions
categories: documentation
permalink: /actions
lang: fr
ref: actions
---

# Actions

Les Actions sont des tâches Salesforce ou externes déclenchées depuis un point de la carte. Il en existe deux sortes :

1. [Standard](#actions-standard), définies par défaut
2. [Personnalisées](#actions-personnalisées), qui s'intègrent à n’importe quel processus de travail

## Actions standard

Elles sont accessibles depuis l’icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-icon_std_actions.png) du panneau d’information :

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-std.png){:.img.img-responsive.img-center}

Il en existe actuellement 4 :

{:.table.table-bordered}
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-std_cal.png){:.img.img-center}|Créer un **évènement** en rapport avec l’objet |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-std_rel_lists.png){:.img.img-center}|Voir les **listes associées** à l’objet |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-action_std_itinerary.png){:.img.img-center}| **Ajouter le point à l’itinéraire** : il sera visible dans la liste des points à visiter dans l’onglet Itinéraire |
| ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-std_radius.png){:.img.img-center} | Rechercher les **points situés autour** de l’objet avec un rayon donné|

## Actions personnalisées

Des actions peuvent être associées à un type d’objet géographique et directement accessible via la fiche d’information.

Ces actions peuvent être des liens internes Salesforce, externes ou des pages Visualforce personnalisées et affichées soit dans une nouvelle fenêtre soit directement sur la carte dans une fenêtre modale.

<div class="alert alert-warning" role="alert"> <strong>Important :</strong> Les liens internes de Salesforce, tels que par exemple les liens de création de tâches ou d'événements, ne peuvent être affichés dans une fenêtre modale mais obligatoirement dans une nouvelle. Cette restriction est imposée par Salesforce.</div>

Liste des actions disponibles :
![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-custom_info_window.png){:.img.img-responsive.img-center}

Page Visualforce personnalisée d'un flux Twitter :
![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-custom_twitter.png){:.img.img-responsive.img-center}

Voir la [configuration des Actions personnalisées](/actions-admin).