---
layout: sidebar
title: User management in Galigeo Territory Management
categories: documentation
permalink: /users-en
lang: en
ref: utilisateurs
---

# User management

## Roles

The application used three different roles:

- **TM_Admin**: this role can create a project, design territories, assign a territory to a user (whatever this user role). This role can see all the Territory Management Project for an organization.
- **TM_Owner**: this role has the same capabilities than the TM_Admin role, except that it sees only its owned project.
- **TM_Stakeholder**: has no right. This role is used to declared a user that a designer can assign to a territory.

## Add an user

To add a user to the Full Edition, click on the "Add a user" button:

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-022.png){:.img.img-responsive.img-center}

Click on the lookup icon to find a user from your org:

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-025.png){:.img.img-responsive.img-center}

The standard Salesforce Lookup window is popup. Click or search for a user that you want to add:

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-028.png){:.img.img-responsive.img-center}

Select a role (this is a specific role for the application, not the same as a Salesforce role).

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-031.png){:.img.img-responsive.img-center}

And click "Save".
If there is any error, the information is displayed. Otherwise, the admin is forwarded to the Admin page.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-034.png){:.img.img-responsive.img-center}

There is now a new user declared as a Designer (with role TM_Admin). As you can see, the used licenses has been incremented to 1.

In the action column, admin can:

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-035.png) Edit the user and change its role only

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-036.png) Remove the user to the TM Designer App