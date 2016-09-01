---
layout: docs
---

<h1 class="m-t-0">Add a database</h1>

So your server is set up, you added an app and configured it's domain name. Before we can deploy your app, we need to do two final things: add a database and add your deploy key to the server.

Unless you're making a static site, you probably want to enable one or more databases for your app. For example PostgreSQL or MySQL. But it's also possible you need some additional service like Redis or Memcached. With Intercity, that's as easy as two button clicks.

Intercity works with the concept of "services". A service can be any piece of software around your app. In the following sample, enabling a PostgreSQL database is done by "linking" that service to your app.

This page will show how to enable a PostgreSQL server and database for your app. Intercity will take care of everything, from installing a PostgreSQL server to generating a database and credentials.

## Installing PostgreSQL

First, install the PostgreSQL server on the server. Go into the app's "Linked Services" tab. You'll see the following screen if you haven't already added any services yet:

<img src="/images/docs-app-no-services@2x.png" class="img-responsive img-thumbnail">

The screen tells you that there aren't any services installed on your server yet. Let's do that now. Click the "Install a service" button and you'll switch to the "Services" tab of your app server configuration:

<img src="/images/docs-server-services@2x.png" class="img-responsive img-thumbnail">

To install PostgreSQL on your server, click "Install Postgres" and the button will change into a label "Installing". After about a minute, the label will change to "Installed". This means that PostgreSQL is ready to be linked to an app.

## Enabling PostgreSQL for your app

Go back to your app server's "Apps" overview and go into your app. Once more, open the "Linked Services" tab. You'll now see a "PostgresSQL" widget with a button "Link Postgres". Click that button to link a PostgreSQL database for your app.

<img src="/images/docs-app-services@2x.png" class="img-responsive img-thumbnail">

After linking, Intercity will expose a `DATABASE_URL` environment variable to your app. This environment variable contains the connection string to connect your app to a database. A lot of web development frameworks - like Ruby on Rails - pick this setting up automatically, so you don't have make any change to your code.

## Next step

If you're building a Ruby on Rails app, you're all set to finish the final step for deploying. If you're using a different framework, check out it's documentation to make use of the `DATABASE_URL` environment variable.

The final step before deploying, is [adding your deploy key](/docs/add-deploy-key.html) to the server.
