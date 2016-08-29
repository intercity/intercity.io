---
layout: install
title: Install Intercity
---

<h1 class="m-t-0">Install Intercity</h1>

Intercity is a webbased hosting and server management dashboard that runs on your own server. This page explains the official way of installation.

## Installling Intercity

To install Intercity, you first need to download the `intercity-server` command line management tool on your server. SSH into your server and run the following command as root:

```
curl https://raw.githubusercontent.com/intercity/intercity-server/master/scripts/installer | bash
```

At the end of the output of this command, you see instructions to run the following command. This command will actually download and install the Intercity hosting management dashboard.

```
source /root/.bashrc && intercity-server install
```

This command will return A LOT of output. In the end you'll see something like this and you know what Intercity has been successfully installed and running!

```
---- Starting Intercity
+ /usr/bin/docker run -d --restart=always -e LANG=en_US.UTF-8 -e RAILS_ENV=production -e RACK_ENV=production -e DB_SOCKET=/var/run/postgresql -e DB_NAME=intercity -e SECRET_KEY_BASE=secret_key_base -e HOSTNAME=michiel.intercity.io -e LETSENCRYPT_ACCOUNT_EMAIL=example@example.com -h ubuntu-1gb-ams2-01-app -e DOCKER_HOST_IP= --name app -t -p 80:80 -p 2222:22 -p 443:443 -v /var/intercity/shared/:/shared -v /var/intercity/shared/log/var-log:/var/log local_intercity/app /sbin/boot
---- Done
```

## Verifying the installation

Point your browser to **http://yourserver.com/** or **http://yourip/** and the following screen appears. This means that Intercity is running and ready to be configured via the first-run web interface.

<img src="/images/initial-setup@2x.png" alt="Initial setup screen" class="img-responsive">

## Next step

Now that Intercity is running, it is time to go through [the initial setup steps](/install/setup.html). Following these steps creates an initial user and configures sending email for notifications and password resets.
