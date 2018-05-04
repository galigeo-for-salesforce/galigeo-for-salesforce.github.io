---
layout: sidebar
title: Related lists
categories: documentation
permalink: /related-lists-admin
lang: en
ref: related-lists
---

# Related lists

## List views

<div class="alert alert-warning" role="alert"> <strong>Warning :</strong> The only way to retrieve the list of views defined for an object and their descriptions (SoQL query, list of fields, etc ...) is to use the Metadata API searchable in REST. For this, it's necessary to declare your organization in the list of remote sites with a URL like:<br>
https://MYSFINSTANCE.visual.force.com<br>
where MYSFINSTANCE is your Salesforce instance</div>

If you have any doubt, please refer to the error message that will be sent, as shown in the picture below:

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/listes_associees-admin_error_message.png){:.img.img-responsive.img-center}

## Relationship example

An Account object is the parent of the Contact, Case, and Opportunity objects.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/listes_associees-admin_relation_objets_sf.png){:.img.img-responsive.img-center}