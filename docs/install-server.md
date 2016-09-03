---
layout: docs
title: "Install a server - Intercity Documentation"
---

<h1 class="m-t-0">Install a server</h1>

To host your apps, you first need to obtain a second server. This will be the primary server that you can put one or more apps on. Let's call this your app server from now on. Your app server must be installed with **Ubuntu 16.04 LTS**.

## Adding your app server to Intercity

When you've obtained your app server, go into your Intercity instance dashboard and click the "Add a new server" button.

<img src="/images/docs-add-server@2x.png" class="img-responsive">

A dialog form shows up where you can enter a name and the IP address or hostname where your app server can be reached by your Intercity instance.

## Allowing access via SSH

A new screen appears that shows that your Intercity instance is polling for an SSH key to be present on your app server. You now need to copy and paste the shown SSH key into the /root/.ssh/authorized_keys file on your app server.

<img src="/images/docs-ssh-check@2x.png" class="img-responsive">

Once Intercity has confirmed it has access to your server, you can proceed to the server installation step. In the next step your server will be properly configured to host apps.

## Installing your server...

Intercity is now showing you it's progress to configure your app server. It will install all the required software for you to host and deploy your apps. You don't have to do a thing. Once the four setup steps are completed, you can continue.

<img src="/images/docs-server-setup@2x.png" class="img-responsive">

## Next steps

When Intercity has completed the setup of your app server, you can go ahead and **[add your first app](/docs/add-app.html)**. What are you waiting for?!
