---
layout: docs
---

<h1 class="m-t-0">Deploy your app</h1>

Awesome, you're at the final step. With Intercity, you've installed your app server, added your app, configured its domain name, enabled PostgreSQL and added your deploy to key. It's now time to deploy your app with an easy git push.

## Adding the git remote

Every app hosted with Intercity has its own unique deploy URL. You can find the deploy URL on the Info tab of an app in your Intercity instance.

<img src="/images/docs-app-info-deploy-url@2x.png" class="img-responsive img-thumbnail">

Add that URL as a remote called "dokku" to the Git repository of your app's code:

```
$ git remote add dokku dokku@95.85.28.175:my-app
```

## Enabling migrations on deploy

If you're deploying a Ruby on Rails app, you probably want your database migrations to be run on every deploy. You can do this by creating a file `lib/tasks/run_migrations.rake` in your Rails project with the following content:

```
Rake::Task['assets:clean'].enhance do
  Rake::Task['db:migrate'].invoke
end
```

## Deploying your app

Let's deploy the app! Commit all your recent changes that you want to deploy and run:

```
$ git push dokku master
```

Dokku, the underlying system that Intercity uses to deploy your apps, will now take care of updating your code, running database migrations, do asset compilation and perform a rolling restart of your app.
