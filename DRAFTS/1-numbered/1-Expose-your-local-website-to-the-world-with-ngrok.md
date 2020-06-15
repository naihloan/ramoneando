Expose your local website to the world with ngrok - CodeBlocQ

Jonathan Klughertz

[*CodeBlocQ*](/)

Expose your local website to the world with ngrok
=================================================

24 May 2016

[\#ngrok](/tags/ngrok/) [\#localhost](/tags/localhost/)
[\#http](/tags/http/)

This article will show you how to tunnel your locally running website
out to the world using [ngrok](https://ngrok.com/).\
[]()

[](#Introduction)Introduction
-----------------------------

You have been working on a local version of your express app that runs
smoothly on your <http://localhost:8080>. Your client is asking to see
what progress has been made to the website and you don’t necessarily
have hours to set it up on a cloud service provider.

This is one of the cases where ngrok comes in handy. It allows you to
redirect your local traffic to a public URL accesible anywhere in the
world. Let’s get started.

[](#Installation)Installation
-----------------------------

I have tried to install [ngrok](https://ngrok.com/) with brew, but it
didn’t work (I ended up with an old version). [Download it from the
website](https://ngrok.com/download).\
\
\
Unzip the package and put it somewhere where ou can easily access it. I
am on OS X and I have put it in my *Applications* folder so I can access
it with:

  --- ------------------------------
  --- ------------------------------

[](#Sign-up-and-get-a-authentication-token)Sign up and get a authentication token
---------------------------------------------------------------------------------

[Sign up](https://dashboard.ngrok.com/user/signup) for a free account
with ngrok and get your auth token. Install the token with *authtoken*:

  --- --------------------------------
  --- --------------------------------

[](#Create-your-first-tunnel)Create your first tunnel
-----------------------------------------------------

I am testing mine with my hexo blog running on <http://localhost:4000/>
but you can use whichever port you want, even your standard port 80.

Run this command (replace the port number with yours)

  --- ----------------------------------
  --- ----------------------------------

The *Tunnel Status* should say *online* and you will get a *Forwarding*
URL that looks something like <http://c9de2896.ngrok.io>.

Open that URL in your browser and look at all your website’s ressources
being redirected from your local through ngrok.io.

You can now use that URL and share it with you friends and clients.

[\#ngrok](/tags/ngrok/) [\#localhost](/tags/localhost/)
[\#http](/tags/http/)

My name is Jonathan Klughertz and this is my blog.\
I am a full stack software engineer with a strong front-end focus.\
I currently live and work in Singapore, hit me up if you are in the
region.

### Récemment

[How to start a tech company as a non technical
ind](/2018/06/How-to-start-a-tech-compnay-as-a-non-technical-individual/)

[Setup gitment on your Hexo
blog](/2018/05/Setup-gitment-on-your-Hexo-blog/)

[Notes on Anything You Want by Derek
Sivers](/2017/11/Notes-on-Anything-You-Want-by-Derek-Sivers/)

[Quicksort JavaScript
Implementation](/2017/10/Quicksort-JavaScript-Implementation/)

[How to receive messages from web sockets using
red](/2017/08/How-to-receive-messages-from-web-sockets-using-redux-saga/)

[](http://www.linkedin.com/in/jonathanklughertz)

[](https://github.com/klugjo)

[](https://stackoverflow.com/users/1595699/klugjo)

Copyright © 2017  |  Theme by [Jonathan
Klughertz](https://github.com/klugjo/hexo-theme-anodyne)  |  Powered by
[Hexo](https://hexo.io)
