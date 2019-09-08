Pragmatic Programmer - by Andy Hunt and David Thomas | Derek Sivers

[Derek Sivers](/)
=================

[*Pragmatic Programmer - by Andy Hunt and David
Thomas*](https://www.amazon.com/dp/020161622X?tag=sivers-20)

Pragmatic Programmer - by Andy Hunt and David Thomas
====================================================

ISBN: 020161622X\
Date read: 2012-09-27\
How strongly I recommend it: **6**/10\
**(See **[**my list of 200+ books**](/book)**, for more.)**

**Go to the **[**Amazon
page**](https://www.amazon.com/dp/020161622X?tag=sivers-20) for details
and reviews.

Classic book for computer programmers. I read it first in 2003 before I
was taking book notes, so I read it again now to take notes. Great
wisdom in here. Amazing to see how much of its advice was adopted as
norms by Ruby on Rails.

my notes
--------

Don't leave "broken windows" (bad designs, wrong decisions, or poor
code) unrepaired. Fix each one as soon as it is discovered. If there is
insufficient time to fix it properly, then board it up.\
\
Your knowledge and experience are your most important professional
assets. Unfortunately, they're expiring assets. Your knowledge becomes
out of date as new techniques, languages, and environments are
developed.\
\
Managing a knowledge portfolio is very similar to managing a financial
portfolio: Serious investors invest regularly-as a habit.
Diversification is the key to long-term success. Smart investors balance
their portfolios between conservative and high-risk, high-reward
investments. Investors try to buy low and sell high for maximum return.
Portfolios should be reviewed and rebalanced periodically. Buy low, sell
high. Learning an emerging technology before it becomes popular can be
just as hard as finding an undervalued stock, but the payoff can be just
as rewarding.\
\
Learn at least one new language every year. Different languages solve
the same problems in different ways. By learning several different
approaches, you can help broaden your thinking and avoid getting stuck
in a rut. If you've used only makefiles and an editor, try an IDE, and
vice versa.\
\
The DRY principle: Every piece of knowledge must have a single,
unambiguous, authoritative representation within a system.\
\
Duplication we see falls into one of the following categories:\
Imposed duplication. Developers feel they have no choice-the environment
seems to require duplication.\
Inadvertent duplication. Developers don't realize that they are
duplicating information.\
Impatient duplication. Developers get lazy and duplicate because it
seems easier.\
Interdeveloper duplication. Multiple people on a team (or on different
teams) duplicate a piece of information.\
\
Sometimes, duplication seems to be forced on us. With a bit of ingenuity
you can normally remove the need for duplication. Often the answer is to
write a simple filter or code generator. Structures in multiple
languages can be built from a common metadata representation using a
simple code generator\
\
The trick is to make the process active: this cannot be a one-time
conversion, or we're back in a position of duplicating data.\
\
Keep the low-level knowledge in the code, where it belongs, and reserve
the comments for other, high-level explanations.\
\
It is easier to write relatively small, self-contained components than a
single large block of code.\
\
If components have specific, well-defined responsibilities, they can be
combined with new components in ways that were not envisioned by their
original implementors.\
\
If I dramatically change the requirements behind a particular function,
how many modules are affected?\
\
If you need to change an object's state, get the object to do it for
you.\
\
Avoid global data. Explicitly pass any required context into your
modules.\
\
Every module can have its own unit test built into its code, and these
tests can be performed automatically as part of the regular build
process.\
\
Nothing is more dangerous than an idea if it's the only one you have.\
\
Tracer code is lean but complete, and forms part of the skeleton of the
final system.\
\
What sorts of things might you choose to investigate with a prototype?
Anything that carries risk. Anything that hasn't been tried before, or
that is absolutely critical to the final system. Anything unproven,
experimental, or doubtful. Anything you aren't comfortable with. Its
value lies not in the code produced, but in the lessons learned.\
\
Program Close to the Problem domain: By coding at a higher level of
abstraction, you are free to concentrate on solving domain problems, and
can ignore petty implementation details.\
\
While the code for parsing a "real" language may be harder to write, it
will be much easier for people to understand, and to extend in the
future with new features.\
\
The units you use make a difference in the interpretation of the result.
If you say that something will take about 130 working days, then people
will be expecting it to come in pretty close. However, if you say "Oh,
about six months," then they know to look for it any time between five
and seven months\
\
Human-readable forms of data, and self-describing data, will outlive all
other forms of data and the applications that created them.\
\
In explaining the problem to another person you must explicitly state
things that you may take for granted when going through the code
yourself. By having to verbalize some of these assumptions, you may
suddenly gain new insight into the problem.\
\
Write Code That Writes Code:\
There are two main types of code generators: Passive code generators are
run once to produce a result. From that point forward, the result
becomes freestanding-it is divorced from the code generator.\
\
Active code generators are used each time their results are required.
The result is a throw-away-it can always be reproduced by the code
generator. Often, active code generators read some form of script or
control file to produce their results.\
\
It is simpler to express it in a simpler, language-neutral
representation and generate the code for both languages,\
\
The concept of Design by Contract: What is a correct program? One that
does no more and no less than it claims to do. Documenting and verifying
that claim is the heart of Design by Contract\
\
Be strict in what you will accept before you begin, and promise as
little as possible in return. Remember, if your contract indicates that
you'll accept anything and promise the world in return, then you've got
a lot of code to write!\
\
Organize your code into cells (modules) and limit the interaction
between them.\
\
Using The Law of Demeter will make your code more adaptable and robust.\
\
No amount of genius can overcome a preoccupation with detail.\
\
"Out with the details!" Get them out of the code. While we're at it, we
can make our code highly configurable and "soft"-that is, easily
adaptable to changes.\
\
Think declaratively (specifying what is to be done, not how) and create
highly dynamic and adaptable programs. We do this by adopting a general
rule: program for the general case, and put the specifics somewhere
else-outside the compiled code base.\
\
Because business policy and rules are more likely to change than any
other aspect of the project, it makes sense to maintain them in a very
flexible format.\
\
A way to get quick and dirty load balancing among multiple consumer
processes: the hungry consumer model. In a hungry consumer model, you
replace the central scheduler with a number of independent consumer
tasks and a centralized work queue. Each consumer task grabs a piece
from the work queue and goes on about the business of processing it. As
each task finishes its work, it goes back to the queue for some more.
This way, if any particular task gets bogged down, the others can pick
up the slack, and each individual component can proceed at its own pace.
Each component is temporally decoupled from the others. Tip 40 Design
Using Services Instead of components, we have really created
services-independent, concurrent objects behind well-defined, consistent
interfaces.\
\
Program deliberately:\
Don't code blindfolded. Attempting to build an application you don't
fully understand, or to use a technology you aren't familiar with, is an
invitation to be misled by coincidences.\
Proceed from a plan.\
Document your assumptions.\
Don't just test your code, but test your assumptions as well. Don't
guess; actually try it. Write an assertion to test your assumptions\
\
Rather than construction, software is more like gardening-it is more
organic than concrete.\
\
When Should You Refactor? When you come across a stumbling block because
the code doesn't quite fit anymore, or you notice two things that should
really be merged, or anything else at all strikes you as being "wrong,"
don't hesitate to change it\
\
Don't try to refactor and add functionality at the same time.\
\
Don't Use Manual Procedures:\
People just aren't as repeatable as computers are. Nor should we expect
them to be. A shell script or batch file will execute the same
instructions, in the same order, time after time.\
\
Suppose you wanted to automate code review scheduling and approval. You
might put a special marker in each source code file:\
/\* Status: needs\_review \*/\
A simple script could go through all of the source code and look for all
files that had a status of needs\_review, indicating that they were
ready to be reviewed. You could then post a list of those files as a Web
page, automatically send e-mail to the appropriate people,\
\
Most developers hate testing. They tend to test gently, subconsciously
knowing where the code will break and avoiding the weak spots. Pragmatic
Programmers are different. We are driven to find our bugs now, so we
don't have to endure the shame of others finding our bugs later.\
\
A good project may well have more test code than production code.\
\
Types of software testing that you need to perform:\
Unit testing\
Integration testing\
Validation and verification\
Resource exhaustion, errors, and recovery\
Performance testing\
Usability testing\
\
Integration testing shows that the major subsystems that make up the
project work and play well with each other.\
When the system does fail, will it fail gracefully?\
\
You need data to stress the boundary conditions. This data may be
completely synthetic: date fields containing February 29, 1999, huge
record sizes, or addresses with foreign postal codes.\
\
Once a human tester finds a bug, it should be the last time a human
tester finds that bug. The automated tests should be modified to check
for that particular bug from then on, every time, with no exceptions, no
matter how trivial,\
\
Downplay the dichotomy between code and documentation, and instead treat
them as two views of the same model (see It's Just a View).\
\
Apply all of our pragmatic principles to documentation as well as to
code.\
\
Commenting source code gives you the perfect opportunity to document
those elusive bits of a project that can't be documented anywhere else:
engineering trade-offs, why decisions were made, what other alternatives
were discarded, and so on.\
\
A simple module-level header comment, comments for significant data and
type declarations, and a brief per-class and per-method header,
describing how the function is used and anything that it does that is
not obvious.\
\
Remember that you (and others after you) will be reading the code many
hundreds of times, but only writing it a few times. Take the time to
spell out connectionPool instead of cp.\
\
Suppose we have a specification that lists the columns in a database
table. We'll then have a separate set of SQL commands to create the
actual table in the database, and probably some kind of programming
language record structure to hold the contents of a row in the table.
The same information is repeated three times. Change any one of these
three sources, and the other two are immediately out of date. This is a
clear violation of the DRY principle. To correct this problem, we need
to choose the authoritative source of information. This may be the
specification, it may be a database schema tool, or it may be some third
source altogether. Let's choose the specification document as the
source. It's now our model for this process. We then need to find a way
to export the information it contains as different views-a database
schema and a high-level language record, for example.\
\
Times you need to present the same documentation in different formats: a
printed document, Web pages, online help, or perhaps a slide show. The
typical solution relies heavily on cut-and-paste, creating a number of
new independent documents from the original. This is a bad idea: a
document's presentation should be independent of its content. If you are
using a markup system, you have the flexibility to implement as many
different output formats as you need. You can choose to have

Chapter Title
=============

generate a new chapter in the report version of the document and title a
new slide in the slide show. Technologies such as XSL and CSS can be
used to generate multiple output formats from this one markup.\
\
As long as your original markup is rich enough to express all the
concepts you need (including hyperlinks), translation to any other
publishable form can be both easy and automatic. You can produce online
help, published manuals, product highlights for the Web site, and even a
tip-a-day calendar, all from the same source-which of course is under
source control and is built along with the nightly build.\
\
The success of a project is measured by how well it meets the
expectations of its users. A project that falls below their expectations
is deemed a failure, no matter how good the deliverable is in absolute
terms.\
\
Gently Exceed Your Users' Expectations\
\
Some consultants call this process "managing expectations"-actively
controlling what users should hope to get from their systems. We think
this is a somewhat elitist position. Our role is not to control the
hopes of our users. Instead, we need to work with them to come to a
common understanding of the development process and the final
deliverable, along with those expectations they have not yet
verbalized.\
\
If you work closely with your users, sharing their expectations and
communicating what you're doing, then there will be few surprises when
the project gets delivered. This is a BAD THING. Try to surprise your
users. Not scare them, mind you, but delight them. Give them that little
bit more than they were expecting. The extra bit of effort it requires
to add some user-oriented feature to the system will pay for itself time
and time again in goodwill. Listen to your users as the project
progresses for clues about what features would really delight them.\

