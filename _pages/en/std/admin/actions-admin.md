---
layout: sidebar
title: Custom actions
categories: documentation
permalink: /actions-admin-en
lang: en
ref: actions-admin
---

# Custom actions

Actions are defined by a map object and are configured from the details page by clicking on the ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/actions-custom_plus_icon.png) icon.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/actions-custom_details.png){:.img.img-responsive.img-center}

The administration page allows to choose the action name, type and other parameters depending of its type.

---

## In this article
{:.no_toc}

* Table of Contents
{:toc}

---

## URL

If the type of action is a URL, only the internet address must be filled in.

Currently only two merge fields are dynamically taken into account in the different URLs:

- Salesforce ID : <code>{!id}</code>
- Name of the object : <code>{!name}</code>

For example, using the id, the URL to create a new task associated with an account is:

```
/00T/e?who_id={!id}&what_id={!id}
```

The account id is automatically inserted instead of {! Id} and the resulting URL is:

```
https://my.salesforce.com/00T/e?who_id=a0I61000000ZCf9EAG&what_id=a0I61000000ZCf9EAG
```

In the example of a Google search using the name of the object, the URL is:

```
https://www.google.fr/search?q={!name}
```

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/actions-custom_google.png){:.img.img-responsive.img-center}

Salesforce actions on an account are:

{:.table.table-bordered}
|Action|URL |
| ------------- | ------------- |
|New contact|<code>/003/e?retURL=%2F{!id}&accid={!id}</code> |
|New opportunity|<code>/006/e?retURL=%2F{!id}&accid={!id}</code> |
|New case|<code>/500/e?def_account_id={!id}</code> |
|New task|<code>/00T/e?who_id={!id}&what_id={!id}</code> |
|New event|<code>/00U/e?who_id={!id}&what_id={!id}</code> |
|Log a call|<code>/00T/e?title=Call&who_id={!id}&what_id={!Id}&followup=1&tsk5=Call</code> |
|Send an email|<code>/_ui/core/email/author/EmailAuthor?p3_lkid={!id}</code> |
|New note|<code>/002/e?parent_id={!id}</code> |
|Attach a file|<code>/p/attach/NoteAttach?pid={!id}&parentname={!name}</code> |
|New partner |<code>/opp/partneredit.jsp?id={!id}</code> |
|Add a campaign|<code>/_ui/common/data/LookupPage?lkpr={!id}&lktp=701&enableScopes=1&addToCampaign=1</code> |

<div class="alert alert-info" role="alert"> <strong>Limitations :</strong> Some parameters do not work in Lightning since tasks are opened in a modal window and not in a dedicated page.</div>

External links examples:

{:.table.table-bordered}
|Action|URL |
| ------------- | ------------- |
|Google search from the name of the object|<code>https://www.google.com/search?q={!name}</code> |
|Add a meeting in Google Calendar|<code>http://www.google.com/calendar/event?ctext=+RDV+{!name}&action=TEMPLATE&pprop=HowCreated%3AQUICKADD</code> |
|LinkedIn search|<code>https://www.linkedin.com/search/results/index/?keywords={!name}&page=1</code> |

## Custom VisualForce page

In the case of a custom VisualForce page, it's possible to choose how the action is opened when the link is clicked:

- In a new window
- In a modal window above the map: in this case, it's possible to specify the size (width and height) either in pixels or in percentage

Example of an action that displays the Twitter feed from a custom Visualforce page:

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/actions-cutom_twitter_example.png){:.img.img-responsive.img-center}