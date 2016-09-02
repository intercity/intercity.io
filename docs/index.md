---
layout: docs
---

<h1 class="m-t-0">Introduction to Intercity</h1>

Intercity is a webbased hosting management dashboard that lets you manage (cloud) servers and deploy Ruby on Rails, Python, Node.js and PHP apps. To some extend, you can compare it to Plesk, DirectAdmin or CPanel.

Unlike a Platform as a Service (like [Heroku](https://heroku.com)), you install an Intercity instance on a seperate server. You then use that Intercity instance to configure and deploy apps on other servers in your infrastructure. This means that a simple setup always consists of at least two servers: one runs your Intercity instance and one or more other servers host your apps.

Having your own Intercity instance on your own server has lots of benefits. We think these are the most important ones:

* Sensitive data (API keys, credentials, backups) is stored on a server you control and that only you have access to.
* Easily installed on-premise or your own workstation. (You could even install Intercity on a Raspberry Pi and take it with you!)
* Conform to regulations or compliancy rules of your company or your client.
* Much cheaper because you pay per server, instead of per app, worker or plugin.
* Run multiple apps on one server, without extra costs.

## Dokku integration

Intercity tightly integrates with [Dokku](https://github.com/dokku/dokku) under the hood. Dokku is the underlying system that allows deploying your apps. The benefit of this integration is that any app that you are able to deploy on [Heroku](https://heroku.com), should also work on your Intercity/Dokku-managed server.

## Next steps

Ready to get started with Intercity? Start on the [Install Intercity](/docs/install.html) page. If you're interested in seeing how you use your own Intercity instance to deploy your apps, take a look at the [Install a server](/docs/install-server.html) page.
