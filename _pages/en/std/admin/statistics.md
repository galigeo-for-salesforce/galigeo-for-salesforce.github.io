---
layout: sidebar
title: Statistics
categories: documentation
permalink: /statistics
lang: en
ref: statistics
---

# Statistics

In the "Statistics" section of the configuration page of a map object, it's possible to:

1. Choose the standard functions that are displayed in the data table after a selection
2. Define a set of custom formulas

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/statistics-admin.png){:.img.img-responsive.img-center}

To access it, click on the Edit button: 

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin-en/infowindow_labels-edit.png){:.img.img-responsive.img-center.img-bordered}

## Standard functions

Click on the "+" icon to choose functions among the standard functions such as number, min, max, average, median and sum.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/statistics-add_std_function.png){:.img.img-responsive.img-center}

It's possible to order them by drag and drop thanks to the three vertical points.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/statistics-std_function_order.png){:.img.img-responsive.img-center}

<div class="alert alert-info" role="alert"><strong>Note :</strong> If no function is selected, then they will all be available in the selection table.</div>

## Custom formulas

Click on the "+" icon to create a new formula.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/statistics-custom_formulas.png){:.img.img-responsive.img-center}

A modal window invites the user to:

- Enter a name
- Choose fields and insert an operator (+, -, /, *)
- Edit the formula generated
- Define the format: label (#val will be replaced by the result of the evaluation of the formula), number of digits after the decimal point

To add the same field several times, just click on the chosen field in the list of fields already selected.

Of the available fields, only numerical fields are available.

Click on the "Test" button to evaluate the expression.

<div class="alert alert-info" role="alert"><strong>Note :</strong> The expression is evaluated with a value equal to 1 for all fields.</div>

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/statistics-custom_formula_definition.png){:.img.img-responsive.img-center}

Click on "Save" to validate the formula, that is now in the list. It's possible to order the formulas by dragging and dropping them with the three vertical points.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/statistics-custom_formula_added.png){:.img.img-responsive.img-center}

The formulas now appear in the table at the bottom of the map after a [selection](/selection-en).

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/statistics-map.png){:.img.img-responsive.img-center}