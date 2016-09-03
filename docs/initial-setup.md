---
layout: docs
title: "Initial setup - Intercity Documentation"
---

<h1 class="m-t-0">Initial setup</h1>

After [installing and starting Intercity](/docs/index.html), you need to perform two initial tasks before you can add your first (cloud) server or VPS. This page will guide you through those steps.

## Creating the first user

Intercity is a multi-user system so you need to create the first user to get started. After the first user is created, you can add as many users as you like. This is very useful when you're working in a team. Every team member has their own login.

The first user can be created by filling out the form that is displayed right after installing and starting Intercity. Just point your browser to the hostname or ip address of the server where you've installed Intercity and you'll see this screen:

<img src="/images/initial-setup@2x.png" alt="Initial setup screen" class="img-responsive">

Enter your email and choose a password and continue to the next step.

## Configuring sending email

It's important that your Intercity dashboard can send emails. This way your users can request password resets and receive important notifications like security updates or app monitoring messages.

Right after creating the first user, you'll see the following screen:

<img src="/images/settings@2x.png" class="img-responsive">

On this screen, enter an email address that you want Intercity to use as sending email address. You MUST enter valid SMTP settings if you want actual email delivery to work. If you don't have an SMTP server, get one via [Mailgun](https://mailgun.com) or [Postmark](https://postmark.com).

## Next steps

You're now finished with your Intercity instance's setup. It's now time to deploy some apps! First, use Intercity to **[install a cloud server or VPS](/docs/install-server.html)**. After your server is set up, you can deploy one or multiple apps.
