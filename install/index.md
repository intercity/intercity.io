---
layout: install
title: Installing Intercity
---

<h1 class="m-t-0">Installing Intercity</h1>

You can install the latest version of Intercity on your (cloud) server
with a single-command installer script. This is the officially supported way
of installing Intercity.

The installer script installs the `intercity-server` command line tool. With
this tool you can install and update Intercity installations on servers.

Please follow the next steps to download, install and configure Intercity on
your server of choice:

## Install Intercity Server CLI

Run the following command as root on your server. This will install the
`intercity-server` command line tool.

```
curl https://raw.githubusercontent.com/intercity/intercity-server/master/scripts/installer | bash
```

## Install and start Intercity

In the final output of the installer script, you'll get instructed to run the
following command to install and start Intercity itself:

```
source /root/.bashrc && intercity-server install
```

This command will return A LOT of output. In the end you'll see something like
this and you know what Intercity has been successfully installed and running!

```
---- Starting Intercity
+ /usr/bin/docker run -d --restart=always -e LANG=en_US.UTF-8 -e RAILS_ENV=production -e RACK_ENV=production -e DB_SOCKET=/var/run/postgresql -e DB_NAME=intercity -e SECRET_KEY_BASE=secret_key_base -e HOSTNAME=michiel.intercity.io -e LETSENCRYPT_ACCOUNT_EMAIL=example@example.com -h ubuntu-1gb-ams2-01-app -e DOCKER_HOST_IP= --name app -t -p 80:80 -p 2222:22 -p 443:443 -v /var/intercity/shared/:/shared -v /var/intercity/shared/log/var-log:/var/log local_intercity/app /sbin/boot
---- Done
```

## Confirm Intercity is installed

Point your browser to http://yourserver.com/ and the following screen
appears. This means that Intercity is running and ready to be configured via
the first-run web interface.

<img src="/images/initial-setup@2x.png" alt="Initial setup screen" class="img-responsive">

## Next up: Setting things up

Now that Intercity is running, continue to [Setting things up &rarr;](/install/setup.html).
