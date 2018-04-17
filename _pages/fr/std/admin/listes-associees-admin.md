---
layout: sidebar
title: Listes associées
categories: documentation
permalink: /listes-associees-admin
lang: fr
ref: related-lists
---

# Listes associées

## Vues de liste

<div class="alert alert-warning" role="alert"> <strong>Important :</strong> La seule manière de récupérer la liste des vues définies pour un objet données ainsi que leurs descriptions (requête SoQL, liste des champs, etc…) est d’utiliser l’API Metadata interrogeable en REST. Pour cela, il est nécessaire de déclarer votre organisation dans la liste des sites distants avec une URL de la forme :<br>
https://MYSFINSTANCE.visual.force.com<br>
où MYSFINSTANCE correspond à votre instance Salesforce</div>

Si vous avez un doute, se référer au message d’erreur qui sera envoyé tel que présenté dans l’image ci-dessous :

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/listes_associees-admin_error_message.png){:.img.img-responsive.img-center}

## Exemple de relation

Un objet Compte (dans le monde Salesforce) est parent de l’objet Contact, Requête et Opportunité.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/listes_associees-admin_relation_objets_sf.png){:.img.img-responsive.img-center}