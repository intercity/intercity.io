---
layout: docs
---

<h1 class="m-t-0">Add deploy key</h1>

Almost there! We've installed a server, created an app, configured a domain name for it and enabled a database server. All with just entering some forms, waiting a few minutes and clicking a few buttons. All we need to do before deploying, is give your workstation access to the server so it can deploy via `git push`.

## Adding your key

In the Intercity dashboard, browse to your app server and click the "Deploy Keys" tab. This will show you the following page:

<img src="/images/docs-server-deploy-keys@2x.png" class="img-responsive img-thumbnail">

In the form on the right of this page, enter a name for your current workstation in the first field. For example: "Michiel's MacBook Pro". In the larger "SSH Key" field, copy and paste the contents of your `~/.ssh/id_rsa.pub`.

If you're on a Mac, you can do this by running the following command in your terminal:

```
$ cat ~/.ssh/id_rsa.pub | pbcopy
```

Paste inside the "SSH Key" field and click "Create new deploy key".

Your Intercity instance will now give your machine access to deploy to your app server. Let's **[go ahead and deploy](/docs/deploy-your-app.html)**!
