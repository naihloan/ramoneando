Re: how do I de-automatize LARBS in my system
jueves, septiembre 6, 2018, 2:06 pm


De: 
"Luke Smith" <luke@lukesmith.xyz>
A: 
"Benji Juarez" <benjij_1980@yahoo.com>
Mensaje original Vista imprimible
The problem you're running into is that the `~/.scripts/shortcuts.sh`
script autoloads ranger keybindings from
`~/.config/ranger/shortcuts.conf` which apparently are loaded later than
the ones you set. They add the t shortcuts. You have a couple options:

+ The easiest is to open your ranger config file, find the line that
loads `shortcuts.conf` and move it somewhere at the top of the document,
or at least above the bindings you set. This will give your bindings
presedence.
+ You could also edit the `~/.scripts/shortcut.sh` command and change
the shortcut it autogenerates for making new tabs to say, capital T
rather than t or something else which will prevent conflicts as well.
+ You could also consider changing your shortcuts to T or something
else.
+ If you don't use the shortcuts.sh functionality, you could remove the
line that runs it in `~/.profile` and remove the relevant lines from the
bash and ranger configs.
