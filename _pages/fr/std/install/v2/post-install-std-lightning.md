---
layout: sidebar
title: Post installation du package
categories: documentation
permalink: /post-install-std-lightning
lang: fr
ref: post-install-std-lightning
---

# Etapes de post-installation

Pour terminer l’installation :

{:.no_toc}

* Table of Contents
{:toc}

---

## Attribuer les nouvelles permissions aux utilisateurs

Cette nouvelle version fournit un ensemble d'autorisation nommé "G4SFDC Map V2" contenant les droits nécesaires pour que les utilisateurs puissent d'une toute nouvelle expérience avec Galigeo

![Galigeo for Salesforce V2 Permission Set]({{ site.url }}/assets/img-std-v2/postinstall/g4sfdcv2_permset.png){:.img.img-responsive.img-center.img-bordered}

Affecter cet ensemble de permission aux utilisateurs souhaités.

## Modifier l'application Galigeo

Afin d'assurer une transition fluide de suite nouvelle version, l'onglet "Galigeo V2" n'est pas ajouté à l'application Salesforce Galigeo par défaut et ne surchage par la configuration par défaut des onglets définit par les utilisateurs.

Voici les étapes à suivre pour avoir accès à ce nouvel onglet:

1. Configuration ==> Créer ==> Applications
  ![Galigeo for Salesforce V2 App]({{ site.url }}/assets/img-std-v2/postinstall/galigeo_sfdc_app.png){:.img.img-responsive.img-center.img-bordered}
2. Cliquer sur le lien "Modifier" devant "Galigeo App" et ajouter l'onglet "Glaigeo V2" à la liste des onglets sélectionnés
  ![Galigeo for Salesforce V2 Tab]({{ site.url }}/assets/img-std-v2/postinstall/galigeo_sfdc_tab.png){:.img.img-responsive.img-center.img-bordered}

