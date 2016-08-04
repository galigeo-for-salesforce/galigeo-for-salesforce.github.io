---
layout: sidebar
title: Filtres et Actions
categories: documentation
permalink: /filtres
---

## Filtres et actions


Les deux premières options de la barre d’outils permettent :

1. De filtrer les données grâce aux filtres associés à la carte 
2. De rechercher un objet sur la carte

### Filtrer les données

#### Avec les filtres pré-configurés

Cliquez sur l’icône « Filtres » ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-035.png)  dans la barre d’outils pour afficher les filtres du panneau de gauche. Ces filtres ont été définis par l’administrateur de l’application lors de la configuration de l’objet géographique.

En activant le filtre « Clients », l’utilisateur réduit la quantité de données affichée, demeurent sur la carte uniquement les objets qui correspondent à ce critère. Les marqueurs apparaissent d’après la symbologie associée au filtre actif.

{:.table}
|   |    |
|:-------------:|:-------------:|
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/filtre1.png){:.img.img-responsive.img-center} | ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/filtre2.png){:.img.img-responsive.img-center}|
| *Filtre "Type" activé* | *Filtre "Clients" activé* |

#### Avec les filtres dynamiques

Les filtres dynamiques vous permttent de filtrer les objets Salesforce présents sur la carte grâce à un simple mot clé.

Leur utilisation est très simple :

- Tapez un mot clé
- Sélectionnez un des suggestions
- Votre carte est filtrée !

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/filtre3.png){:.img.img-responsive.img-center}

### Faire une recherche

Cliquez sur l’icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-038.png) dans la barre d’outils pour afficher les options de recherche dans le panneau de gauche.

Cette section permet à l’utilisateur de faire une recherche par nom sur les données affichées sur la carte.
Une fois la recherche saisie, la liste des cibles n’inclut plus que les objets dont le nom correspond. Le nombre d’objets correspondant est affiché.

{:.table}
|   |    |
|:-------------:|:-------------:|
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-039.png){:.img.img-responsive.img-center} | ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-040.png){:.img.img-responsive.img-center}|
| *La liste n'est pas filtrée* | *La liste est filtrée par le mot « les »* |

En dessous du champ texte de saisie, se trouvent deux cases à cocher :

- Filtrer sur l’étendue : permet de filtrer la liste en affichant seulement les données visibles par l’utilisateur sur la carte

- Étiquettes : Cette option est disponible lorsque l’administrateur a ajouté des étiquettes lors de la configuration de l’objet géographique. Lorsque l’utilisateur l’active, une étiquette contenant les champs et valeurs précisées par l’administrateur s’affiche près du marqueur sur la carte. Les étiquettes ne s’affichent pas quand le marqueur est dans un cluster.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-043.jpg){:.img.img-responsive.img-center}

En cliquant l’un des points de la liste de données, la carte se centre sur le marqueur correspondant et sa fiche d’informations se déplie. Son contenu est défini par l’administrateur lorsqu’il configure l’objet géographique.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-044.jpg){:.img.img-responsive.img-center}

Dans la fiche d’informations, par défaut, le nom de l’objet est affiché en vert. En cliquant sur le nom, vous accédez à la fiche Salesforce de cet objet et retrouvez l’intégralité des informations qui s’y rapportent .

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-045.jpg){:.img.img-responsive.img-center}

### Actions sur les objets

La liste des cibles (dans la section données) et le panneau d’informations comportent l’icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-056.png). Elle permet d’accéder à des actions :

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-047.png) Créer un événement en rapport avec l’objet

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-057.png) Ajouter l’objet à un itinéraire

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-049.png) Rechercher autour de l’objet avec un rayon donné
