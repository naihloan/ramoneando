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

Extra useful to convert massive files of .md to .html:

multimarkdown -f -b *.md

(only thing left to improve is modify template from pandoc to add customized local css)*
http://support.fletcherpenney.net/discussions/questions/1272-convert-lots-of-md-files-to-html-with-one-command

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
