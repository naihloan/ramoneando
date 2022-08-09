# 239 Why Do We Need APIs

Hey guys. In this module we're going to be talking all about APIs, Application Programming Interfaces.  Now it's very likely, if you spend any time on the Internet at all, you would have heard of this term crop up every so often.  So in the coming lessons of this module, we're going to explore what exactly APIs are, and what we can do with it.

First things first. In this module you're going to be exploring a number of APIs, and you're going to be building a weather application, as well as a email sign up web application.  This is going to allow you to collect real users’ email addresses, and save it to your own database on MailChimp, so that you can contact them at a later point.

And this is really useful if you decide to create a landing page and email people when your product launches, or if you're trying to set up an email newsletter and stay in touch with your subscribers.  So that's the goal.

Now, in order to get there though, we first have to understand what are APIs, and why are they useful.  Now, if you went onto yahoo.com, and you took a look at their little weather section on the right, you'll notice that it takes the current location of your web browser, and gives you the upcoming weather forecast for your location.  Now, if we wanted to create our own web site, and we wanted a little module like this, how would we do that?  Because we're not going to go around collecting weather data, right?  We're not really kitted out to be able to detect wind speed and the temperature and forecast what the weather will be like in the future.

So where do we get this data anyways?  Well, we could use a weather data service, like OpenWeatherMap, where their job is to collect these pieces of data and organize it and do all of the complicated things to forecast the weather, and then all we have to do is to use their API to tap into that live weather data, and we'll be able to start pulling it into our web site, just like how Yahoo does it here.

Now similarly, when you go onto Tinder, and you've seen that section where it says ‘Shared Friends’ or ‘Shared Interests’, where did these pieces of data come from?  Well, it comes from when the user logs in with Facebook.  Tinder is able to ask Facebook for these pieces of data on the user, and then it can use that data to populate these sections, and it will do that through the use of the Facebook API in order to get that data from Facebook.  Now out there there are loads of different types of APIs that you can use.  For example, in the UK we have the Police API, which gives us granular data on where certain crimes have happened, on things like what happened with that crime, who was involved, and a whole lot of things.  And through the use of an API like this, people are able to build interesting web sites, like this one.

This is called Murder Map.  It has a little bit of a dark name, and it's a little bit of a strange web site, but it takes that data from the police API, and it maps out all of the murders that take place in London by location as well as by weapon, by date, and by the age and gender of the victim.  And it's really interesting to see this data mapped out, especially if you're trying to figure out where you want to live.  So maybe stay away from gun and knife crime, but maybe poisoning and other things won't affect you so much.

So in the coming lessons, I'm going to be introducing you to some really fun API.  But there's all sorts of APIs out there, and they range from things such as APIs that give you data on the prices of various stocks, to things like an API that gives you data on various Pokémon, so all the way from very serious to very not serious.

You can access all sorts of data via APIs and use them to create your own web sites.  Now we've talked so much about APIs.  What exactly is the definition of an API?

A broad definition that a lot of people go by is that an API is a set of commands, functions, protocols and objects that programmers can use to create software or interact with an external system.

So what does all of that mean?  Well, let's simplify it.

Let's say that you were going to a restaurant, and in a restaurant we know that there are the things that are on the menu, say various cakes and desserts that they sell, but you could also go into the kitchen and you would find there’s loads of raw ingredients, and probably a couple of surprised chefs as to what it is you're doing in the kitchen.

Now if you had just decided that you were going to go into the kitchen pantry and just start eating things that they have they're, like just start spooning some mayonnaise, then the restaurant's going to be pretty shocked, right, and they're going to be pretty unhappy about that, because there are certain things which they sell and they will let you buy, but then there's other things which are kind of off limits.

It's kind of similar with data. For every web site that has their own data, be it Facebook, which has data on their users, or something like the police API, which has data on crimes, there’s certain pieces of data that they will allow you to access, but there's other pieces of data that's not really your business.

So how can these web sites tell you what are the things that you can actually access from them and how to do that?  Well, if we were in a restaurant then they might provide that information in the form of a menu, right?  So at this restaurant you can buy cakes, you can buy sandwiches, tea and coffee. And for a service like a weather API, say like OpenWeatherMap, then the kind of data that you can access include things like
the temperature, the weather conditions, the weather images, and maybe the atmospheric pressure.

An API, some people will consider to be a contract. It’s a contract between the data provider and the developer.  And essentially what it says is these are all the things that developers can access, and these are the methods, the objects, the protocols that you would use to access them.  And we, as the web site that hosts the data, will try to not change any of these methods or functions without notifying you.

Coming back to our definition, then it starts to make a little bit more sense, right, where an API is a set of commands, functions, protocols and objects that programmers can use to create software or interact with an external system.

Now we've seen a lot of examples of an API that allows you to interact with an external system, but we haven't really seen any that allow you to create software, or have we?

Well, if you think about it, when we learnt about jQuery, what is jQuery? Well, it's an API, right?  It's something that gives you access to a whole bunch of functions and objects that let you create software much more easily than if you were just writing vanilla Javascript.

Now if we think back to the Tinder example, where Tinder was getting data from Facebook to get the shared friends and shared interests of their users, well this is a case where they're using the Facebook API to interact with an external system, namely the Facebook database.

Now in this module we're going to focus on the types of APIs that allow us to interact with an external system, and most importantly an external server.  So we're going to get hold of some piece of data from a web site, and we're going to do that through their API, and we're going to read their documentation to see what are all the things that we can do.  And we're going to use their API as a menu of things that we can do to interact with their data.

So that's a little bit on the theory of API, but in the next lesson we're going to look at how we can put it into practice. For all of that and more, I'll see you there.
