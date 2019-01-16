---
layout: sidebar-starter
title: Installation du module de géocodage
categories: starter
permalink: /install-geocodage
lang: fr
ref: install-geocoding
---

{:.table}
| ![notice]({{ site.url }}/assets/warning.png){:height="40px" width="40px"}  | Aucun support ne sera apporté pour ce composant mis gratuitement à disposition. |

# Installation du module de géocodage

L'installation du module de géocodage est une installation classique d'application Salesforce à partir d'une URL, qu'il suffit de lancer dans le navigateur ou directement depuis l’[AppExchange de Salesforce](https://appexchange.salesforce.com/appxListingDetail?listingId=a0N30000000q66zEAA).

Pour les étapes d’installation, se référer à la [documentation Salesforce](https://developer.salesforce.com/docs/atlas.en-us.appExchangeInstallGuide.meta/appExchangeInstallGuide/appexchange_install_installation.htm).

## Vérification du package installé

Pour vérifier que l'installation s'est bien faite, rendez-vous dans **Configuration > Packages Installés**.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-str-install/install_geocoding-package-fr.png){:.img.img-responsive.img-center.img-bordered}

## Configuration des composants

Le package de géocodage contient principalement trois composants Visualforce qui peuvent être intégrés à :
- une page de présentation d'un objet
- en tant qu'application mobile Salesforce (anciennement Salesforce1)
- ou encore être utilisés comme [action rapide](https://developer.salesforce.com/docs/atlas.en-us.salesforce1.meta/salesforce1/actions_about.htm) depuis une page de présentation Salesforce d'un objet sur mobile

Les composants peuvent être configurés pour des objets standards Salesforce et des objets personnalisés. Dans les articles à suivants nous allons configurer les différents composants pour l'objet Compte (« Account »).