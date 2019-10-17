---
layout: sidebar-lightning
title: Exploration de données
categories: documentation
permalink: /lightning/data-explorer
lang: fr
ref: lightning-dataexplorer
---
<style>
  .table-noheader th { display:none;}
</style>

# Exploration de données

Cliquez sur l’icône ![Data Explorer]({{ site.url }}/assets/img-std-v2/user/icons/icon_explorer.png) dans la barre d’outils pour afficher le panneau de l'explorateur de données.

## La Base SIRENE

- Entrer une terme et appuyer ENTREE pour lancer la rechercher
- Une liste d'établissement s'affiche en dessous et aussi sur la carte

![Data Explorer]({{ site.url }}/assets/img-std-v2/user/dataexplorer/mainpanel.png){:.img.img-responsive.img-center.img-bordered}

Cliquer sur un établissement de la liste pour afficher sa fiche d'information (celle-ci peut aussi s'obtenir en cliquant directement sur un marqueur de la carte)

![Data Explorer]({{ site.url }}/assets/img-std-v2/user/dataexplorer/sirene_infowindow.png){:.img.img-responsive.img-center.img-bordered}

### Enrichissement du CRM
Si l'utilisateur est dans un contexte d'exécution Lightning de Salesforce, la fiche di'nformation contient des actions permeettant de créer une nouvelle piste, un nouveau compte ou un nouveau contact à partir des informations de la base SIRENE (nom, adresse, coordonnées).

{:.table.table-noheader}
|               |               |               |
|:-------------:|:-------------:|:-------------:|
|![Data Explorer]({{ site.url }}/assets/img-std-v2/user/dataexplorer/sirene_newlead.png){:.img.img-responsive.img-center} |![Data Explorer]({{ site.url }}/assets/img-std-v2/user/dataexplorer/sirene_newaccount.png){:.img.img-responsive.img-center} |![Data Explorer]({{ site.url }}/assets/img-std-v2/user/dataexplorer/sirene_newcontact.png){:.img.img-responsive.img-center}
| *Nouvelle Piste* | *Nouveau Compte* | *Nouveau Contact* |

<div class="alert alert-warning" role="alert"> <strong>Important :</strong> La création de ces objets est entièrement déléguée à Salesforce, i.e le formulaire est celui paramétré dans Salesforce. Galigeo envoie uniquement les informations nécessaires.</div>
