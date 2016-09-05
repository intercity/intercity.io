---
layout: docs
title: "Configure a domain name - Intercity Documentation"
---

<h1 class="m-t-0">Configure a domain name</h1>

After installing your server and adding an app to it, you want your app to be accessible on a domain name, right? Once more, adding a domain name is really simple. The only manual step involved is setting up your DNS records to point to your app server's IP address.

## Linking a domain name

From your app server's apps overview page, go into your app. You'll see the following screen:

<img src="/images/docs-app-details@2x.png" class="img-responsive img-thumbnail">

Click on the "Domains" tab under your app name, which will bring you to the page to manage domain names for your app.

<img src="/images/docs-app-domains@2x.png" class="img-responsive img-thumbnail">

To the right you see the "Add a new domain" form. Enter the domain name that you want your app to be accessible on, and click "Add".

## Next steps

Before deploying, you need to point the domain name's A and/or AAAA records to the IP of your app server. But first, we'll take a look at **[adding a database](/docs/add-a-database.html)** to your app.
