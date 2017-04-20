I created a script and placed it at /bin under the name of ramon. basically like this:
#!/bin/bash # My first script
echo "git add --all && git commit -m 'many commits' && git push -u origin"

y después hay que darle permisos de ejecución... ouch

...  chmod 755 my_script

git add --all && git commit -m "many commits" && git push -u origin 

ramoneando
==========

How-To Clone a Repository (go to the proper folder):
git clone https://github.com/user/folder.github.io


Add, commit, and push your changes:

git add --all

git commit -m "many commits"

git push -u origin 
...(master)

ó bien

git add --all && git commit -m "many commits" && git push -u origin 



* instead of ...
git commit -m "Initial commit"



Using Node.js
=============

You'll need:

To run this app, save it to a file called app.js, npm install koa and run % "node app &" from your command line. Next, visit http://localhost:3000. In your browser.
