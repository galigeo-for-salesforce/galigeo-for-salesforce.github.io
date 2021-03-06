---
layout: sidebar
title: Actions personnalisées
categories: documentation
permalink: /actions-admin
lang: fr
ref: actions-admin
---

# Actions personnalisées

Les actions sont définies pour un objet géographique et sont configurées à partir de la page de détails par un clic sur le l’icône ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/actions-custom_plus_icon.png).

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/actions-custom_details.png){:.img.img-responsive.img-center}

La page de configuration permet de définir le nom de l’action, son type et des paramètres qui dépendent du type.

---

## Dans cet article
{:.no_toc}

* Table of Contents
{:toc}

---

## URL

Dans le cas où le type d’action serait une URL, seule l’adresse internet doit obligatoirement être renseignée.

Actuellement seuls deux champs de fusion (merge fields) sont dynamiquement pris en compte dans les différentes URL :

- L’identifiant Salesforce : <code>{!id}</code>
- Le nom de l’objet : <code>{!name}</code>

Par exemple, en utilisant l’id, l’URL pour créer une nouvelle tâche associée à un compte est:

```
/00T/e?who_id={!id}&what_id={!id}
```
L’id du compte est automatiquement inséré à la place de {!id} et l’URL résultante est:

```
https://my.salesforce.com/00T/e?who_id=a0I61000000ZCf9EAG&what_id=a0I61000000ZCf9EAG
```
Dans l’exemple d’une recherche Google utilisant le nom de l’objet, l’url est :

```
https://www.google.fr/search?q={!name}
```

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/actions-custom_google.png){:.img.img-responsive.img-center}

Les actions Salesforce sur un compte sont :

{:.table.table-bordered}
|Action|URL |
| ------------- | ------------- |
|Nouveau contact|<code>/003/e?retURL=%2F{!id}&accid={!id}</code> |
|Nouvelle opportunité|<code>/006/e?retURL=%2F{!id}&accid={!id}</code> |
|Nouveau case|<code>/500/e?def_account_id={!id}</code> |
|Nouvelle tâche|<code>/00T/e?who_id={!id}&what_id={!id}</code> |
|Nouvel évènement|<code>/00U/e?who_id={!id}&what_id={!id}</code> |
|Consigner un appel|<code>/00T/e?title=Call&who_id={!id}&what_id={!Id}&followup=1&tsk5=Call</code> |
|Envoyer un email|<code>/_ui/core/email/author/EmailAuthor?p3_lkid={!id}</code> |
|Nouvelle note|<code>/002/e?parent_id={!id}</code> |
|Joindre un fichier|<code>/p/attach/NoteAttach?pid={!id}&parentname={!name}</code> |
|Nouveau partenaire |<code>/opp/partneredit.jsp?id={!id}</code> |
|Ajouter à une campagne|<code>/_ui/common/data/LookupPage?lkpr={!id}&lktp=701&enableScopes=1&addToCampaign=1</code> |

<div class="alert alert-info" role="alert"> <strong>Limitations :</strong> Certains paramètres ne fonctionnent pas dans Lightning, les tâches s’ouvrant dans une fenêtre modale et non dans une page dédiée.</div>

Exemple de liens externes :

{:.table.table-bordered}
|Action|URL |
| ------------- | ------------- |
|Recherche Google à partir du nom de l’objet|<code>https://www.google.fr/search?q={!name}</code> |
|Ajouter un RDV dans Google Calendar|<code>http://www.google.com/calendar/event?ctext=+RDV+{!name}&action=TEMPLATE&pprop=HowCreated%3AQUICKADD</code> |
|Recherche Societe.com|<code>http://www.societe.com/cgi-bin/search?champs={!name}</code> |
|Recherche LinkedIn|<code>https://www.linkedin.com/search/results/index/?keywords={!name}&page=1</code> |

## Page VisualForce personnalisée

Dans le cas d’une page VisualForce personnalisée, il est possible de choisir le comportement de l’action à l’ouverture :

- Dans une nouvelle fenêtre
- Dans une fenêtre modale au-dessus de la carte : dans ce cas il est possible de spécifier la taille (largeur et hauteur) soit en pixel soit en pourcentage

Un exemple d’action qui affiche le flux Twitter à partir d’une page Visualforce personnalisée :

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/actions-cutom_twitter_example.png){:.img.img-responsive.img-center}