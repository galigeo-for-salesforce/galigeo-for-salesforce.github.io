---
layout: sidebar-advanced
title: Package Post installation
categories: documentation
permalink: /post-install-advanced-en
lang: en
ref: post-install-advanced
---

# Post-Installation steps

As mentioned in the [Install section](/install-advanced-en), this package is an extension of Galigeo for Salesforce Standard Edition.

There severals steps to complete this installation:

- Modify the base package to include the new tabs
- Assign permissions

## Base package modification

Go to **Setup | Create | Apps** 
and edit the Galigeo for Salesforce Standard Edition package.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-install/Galigeo4SFDC_-_Installati-047.png){:.img.img-responsive.img-center}

The advanced edition contains three tabs that need to be added to the Standard Edition app. Those tabs are:

- Galigeo Admin (Advanced)
- Territory Design
- Records Assignment

Add these tabs the selected tabs for the app and click "Save":

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-install/Galigeo4SFDC_-_Installati-048.png){:.img.img-responsive.img-center}

## Give access using Permission Set

As this application is an extension of the Galigeo Standard Edition, it is probably already done.

## Create/Update user profile

Depending on your organization settings and security rules, SalesForce administrators would give special rule to a given profile.

This application has three new tabs:

- **Galigeo Admin (Advanced)** : administrate your organization: see Territory Design licenses type and number, manage your users
- **Territory Design** : allow a user to design territories
- **Records Assignment** : in this tab, a user can do a mass records assignment according to a territory owner from a territory project.

According to the several actions available in each tab, you may don't want an end user to acces to the **Galigeo Admin (Advanced)** and **Territory Design** tabs but only has access to the Records Assignment tab.

To achieve this, suppose we already have a profile named "Galigeo end user". Click on "Edit".

Go to the "Custom Tab Settings" section, and activate the "Records Assignment" tab for this profile:

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-install/Galigeo4SFDC_-_Installati-049.png){:.img.img-responsive.img-center}

and click "Save".

More generally, for each VisualForce Page, here is the list of the Apex Classes used and the Tab where it is included:

{:.table.table-bordered.table-condensed.table-small}
| Visualforce Page | Apex Class | Custom Object | Tab Label | Tab Name |
| ---------------- | ---------- | ------------- | --------- | -------- |
| TM_Admin				 | TMAdminController <br> TMOrgManagementController | TM_User__c | Galigeo Admin(Admin) | TM_Admin |
| TM_CreateEditUser | TMCreateEditUserController |  |  |  |
| Tm_app				 | TMMapController |  | Territory Design | TM_App |
| TM_Assignment		| TMAssignmentController <br> TMBatchAssignment |  | Records Assignment | Territory_Assignment |

Please refer to this table when setting security access for your profile.

