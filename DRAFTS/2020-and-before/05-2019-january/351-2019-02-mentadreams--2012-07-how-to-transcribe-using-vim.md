fetched 2019-01-22

How to transcribe using Vim
---------------------------

07 Jul 2012

From time to time I have to do some transcription jobs, and on top of
being quite stressful, there are no many programs that help to get the
job done. There are some I’ve tried such as [Express
Scribe](http://www.nch.com.au/scribe/index.html), which has versions for
the major platforms (OS, Linux and Windows, but the Linux one is
out-of-date and discontinued as it seems) or
[F4](http://www.audiotranskription.de/english/f4.htm), but I really miss
having a top-notch Linux version since it’s the operating system I find
myself using most of the time.

Basically, the way this programs work is as follows: they activate some
global keybindings for the user to be able to pause and seek the audio
or video, so you can work in the transcription in any other word
processing software while you control the media file. That sounds like a
nice idea, since you can take advantage of any other software you use
(such as OpenOffice’s grammar check). Most of these programs include a
text editor focused on the transcription process that, when starting a
paragraph, insert the current time of the file you’re transcribing.
Usually, they also enable the user to slow down the audio so you don’t
have to stop so often, since usually you’ll type slower than the people
speak… And during interviews people tend to speak really really fast.

But after a couple hours of trying I really missed the amazing text
editing capabilities of Vim, the editor I use 99% of the time. So I
started using it along with the global keybindings of the transcription
programs.

No need to say that I didn’t manage to run those programs smoothly and
without any headaches under Linux, so I started using VLC to play files.
On the other hand, I found it really annoying to configure for doing any
transcription with it, since the ideal “seek backwards and forwards”
time is 3 seconds, but by default, in VLC this value is 10 seconds. On
the other hand, the *tempo scaling* (slowing the audio while keeping the
tune, so the speaker doesn’t end up talking as Darth Vader) capabilities
of VLC are not as good as I’d like. After 10 minutes of configuring
everything to my needs an idea came to my mind: “I’m sure the good-old
Mplayer is capable of all this and more”. For those who still don’t know
[Mplayer](http://www.mplayerhq.hu/design7/news.html), it’s a multi
platform media player that has a command line and a graphical interface.

So I got prepared to get my hands dirty and started doing some research.
This is what I found out:

#### To change the seek time of Mplayer to 3 seconds, add this to your \~/.mplayer/input.conf :\

`RIGHT seek 3<br /> LEFT seek -3`

By default, Mplayer can increase or decrease the speed with the keys \[
and \], but it’ll have an impact on the tune of what you’re playing, so
even Frank Sinatra will sing as high pitched as the Smurfs.
Affortunately, our beloved Mplayer also has a plugin to scale the tempo
when changing the speed. To activate it, run it with the following
command:

`mplayer -af scaletempo file_to_reproduce`

And now, the latest piece of the puzzle: how on earth can I control
Mplayer from Vim. Well, that one was the easiest, since Vim is the most
quirky and customisable piece of software on Earth, but it’s the part
that took me the most time. Mplayer can be run in “slave mode”
(described in this [manual
page](http://www.mplayerhq.hu/DOCS/tech/slave.txt)), and it’ll read
commands from stdin, instead of “keystrokes”. This means that, to play
and pause, instead of pressing the spacebar, you’d have to type “pause”
and press enter. Well… that sounds like something I won’t like to be
doing, but as you might expect, the idea of this mode is allowing other
programs to communicate with Mplayer and stablish some sort of protocol.
This can be easily done by using a pipe file, in Unix terms: a FIFO.
This is basically a virtual file that you can write to and read from. In
my “setup” Mplayer will read from it (it’ll be its stdin) and Vim will
write commands in it. To create the FIFO:

`mkfifo /tmp/mplayerfifo`

And now, to make MPlayer use it as a source from commands:

`mplayer -af scaletempo -slave -input file=/tmp/mplayerfifo file_to_play`

Now we just have to send commands to that file. Try, for example to send
a pause command:

`echo "pause" > /tmp/mplayerfifo`

Wow, now you can control Mplayer from the command line. That’s awesome,
but the best bit is that we can just do the same from Vim. Don’t believe
me? To execute any bash command in Vim you just press, while in normal
mode !mycommand.  For example

`:! echo "pause" > /tmp/mplayerfifo`

Yay, we’re almost there. But that ugly command is not something you want
to be typing all the time. That’s where the Vim mappings and its
configuration file comes in handy. Add this lines to your \~/.vimrc file
and you’ll be able to use F3 to pause/play (it’s the same command), F4
to seek forward and F2 to seek backward. Isn’t it brilliant?

`map <silent> <F2> :! echo seek -3 > /tmp/mplayerfifo<CR><CR><br /> map <silent> <F4> :! echo seek 3 > /tmp/mplayerfifo<CR><CR><br /> map <silent> <F3> :! echo pause > /tmp/mplayerfifo<CR><CR><br /> imap <silent> <F2> <Esc>:! echo seek -3 > /tmp/mplayerfifo<CR><CR>a<br /> imap <silent> <F4> <Esc>:! echo seek 3 > /tmp/mplayerfifo<CR><CR>a<br /> imap <silent> <F3> <Esc>:! echo pause > /tmp/mplayerfifo<CR><CR>a`

The “duplicity” of lines is just to have different commands when in
insert and normal modes.

Well. I hope that helped someone as much as it helped me. Now I won’t
need to leave Vim to pause and seek.
