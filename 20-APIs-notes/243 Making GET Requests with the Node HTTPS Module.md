# 243 Making GET Requests with the Node HTTPS Module

Now that we've seen how we can use APIs to get data from various web sites, including things like quotes or jokes or live weather data, it's time to put it into practice and get these pieces of data from an API and then use it inside our own web apps.

## Client Browser & Your Server & Someone Else´s Server

This is what the process will roughly look like.

> The client browser, so this is our user, is going to be typing in our web address into their browser, say Chrome, and that is going to make a request to our server, and that's going to be a GET request. So it's going to try and get the HTML, CSS and Javascript from our server.

### Request API: Parameters, Paths, Key-Value Pairs

Now at this point what happens is our server should return all of those pieces of data, the HTML, CSS and Javascript, and that's in the response. But in order to be able to give them that response that includes some data from somebody else's server, we're going to have to make a request to that other server.

And it's again going to be a GET request, so that they will give us a response in the form of the data that we need.

And we're going to do this via their API, so via the menu that they provided for us to make our requests, where they've specified what are the things that we need to pass over, like what parameters, what paths, what key value pairs we have to use in order to get the response and the data that we want.

### Response API: Data

So then, once we get the data, we can go back and incorporate that data into the files that we send back to our client, the user for our web site.

That's just the high level overview of what's going to happen in the code that we're going to write.

But effectively we're looking to create something very simple like this.

We should be able to display to the user the temperature of a particular location that they're interested in, and also display a weather symbol for the weather conditions there, so something that looks a bit like this. To begin, let's go ahead and create our new project, and we're going to do that on the command line using the Hyper terminal.

## Command Line Module

So go ahead and open up Hyper, and cd over to your desktop. Now once you're there, you're going to create a directory using mkdir, and we're going to call it WeatherProject. Once I hit enter, you'll see my new folder created inside my desktop.

And if any of this is confusing to you at all, make sure you go back and complete the command line module, because we've gone through all of this in detail already over there.  Let's continue.

## New Project

###  WeatherProject

Now let's go ahead and cd into the WeatherProject, and once we're inside this folder, so we're now here, I'm going to create some new files using the touch command.

So I'm going to create a file called the index.html, and then I'm going to create another file called the app.js.  And of course you can do this all on one line just by writing ‘touch index.html’, and then ‘ app.js’. I'm not going to hit enter because it's just going to create it all over again, but this is now what we've got. 

### npm init & default settings 

Now the next step is we're going to initialize NPM with npm init, and I'm simply just going to hit enter for all the default settings.

### package.json & install more packages (express)

So now you can see we've got our package.json created. And using NPM I'm going to install a couple of packages. And the only module we need to install right now is the Express NPM module.

So I'm just going to hit enter, and hopefully it's going to fetch everything I need from the Internet, and create my package log and download my node modules.

And now I'm ready to open up my weather project inside Atom.

Now that I've got Atom open, I'm just going to drag my weather project, the entire folder, into Atom.  And now I've opened up my directory here, and I can start editing my index.html and my app.js.

So this should all be pretty familiar to you by now.

### Create a new Node app with app.js

Now I'm gonna focus on my app.js file, and I want to create a new Node app.

To do that I'm going to require the Express module, so create a const called express to require my Express module, and then I'm going to create a const called app, which is going to initialize a new Express app. And then at the very bottom I'm going to do app.listen, and I'm going to be listening on port 3000, and I'm going to add my callback function, which is just going to console.log that the server is running on port 3000. Cool.

Now all I have to do is to add an app.get, so what should happen when the user tries to go to my home page, the root route.

Well, let’s add our callback function, our req and res, and then inside our app.get all I'm going to do for now is just to use res.send to send over some text.

Let's just say, “Server is up and running.”

> So now let's hit save and go back to our Hyper terminal, use Nodemon to run our app.js, and you can see that this is now logging from here, “Server is running on port 3000.”, and we can now go to localhost:3000 and see that our server is up and running.

So it's all connected.

We're now ready to get started.

## Build With Muscle Memory

Now I know that some people like to save all of this boilerplate somewhere, and then just copy and paste it whenever they create a new project, but I think when you first get started working with it, it's quite nice building up a little bit of muscle memory and just typing it out every time.

And this way when something does change, you're able to react to it, rather than having to go and debug it because you've copied it from somewhere. Instead of sending, “Server is up and running.”,

## GET Weather Data

I'd really prefer to send the current weather data. In order to do that, I have to somehow make a get request to the OpenWeatherMap’s server, and be able to fetch the data back as a JSON, and parse it so I get the relevant piece of information.

How do we do that?  If we didn't know how to do this, then we'd probably ask our good friend Google, right?

Make get requests to external server with node.

The first result we get back on Stack Overflow points to a package called request, and, in old versions of this course, I used to point students toward this module, because it's really nice and it has a really simple implementation.

But, as of January 2020, the request module is now deprecated, so it's basically being retired.  So if you've used request before in one of your previous projects, then it will still work, but for all new students, I recommend to use a different module. 

## HTTP - the Standard Library

And if we take a look at this blog post by Twilio, which came up actually in fact as the first result for our search, they're telling us that there are five ways of doing this, and the first way is the native way, using the Standard Node Library, something called the HTTP module. And in fact they're actually using the HTTPS module, which is the secure version. But in addition you could also use the Request module, Axios, SuperAgent, or Got.

Now all of these last four are external NPM packages, but I want to show you how you can do it natively.

So we're going to be using the native HTTPS Node module.

So if we search for it inside our Node documentation, you can see that somewhere down here, there is the option to form a get request. And all we have to do is to get hold of the HTTPS module, to call the get method on it, and then, once we get our results back, we can either log the status code, or simply just get hold of the data.

This is what we're going to use in our code.

So right at the top here, I'm going to create a new constant called https, and then I'm going to require this HTTPS module. And we don't actually have to install this using Node, because it's one of the native Node modules, which is already bundled within our Node project, so we can simply just go ahead and use it. Inside my app.get, before I send the result back to my client,

I'm going to use my HTTPS module and call the get method. Now the get method is going to need a URL.

If we go into Postman, where we've got our already prestructured URL, which includes all the parameters that we've added here.

Make sure that you've checked that it actually works, that you actually get back some data, and everything looks like it's working.

Then we can copy this entire formatted URL, and then paste it into our get method right here.

Now the thing to remember about this URL, though, is it needs to have the strict formatting of the https:// and then the rest of the URL, because even though we could take this URL, paste it into our browser, and our browser will automatically add all the necessary https etc., it doesn't work like that when we use our Node module. We have to have this first part there.

Now you can either just paste it into your browser and then select it and copy it, and now when you add this string you'll see that it's automatically included that first part, or you could simply just have typed this as well.

It doesn't really matter. Now because this URL is so long, and we can't even see the beginning and end of our get method, what I'm going to do is take this string out of the method, and use a constant to hold it instead.

So we'll just call that url, and set it equal to the entire string.

Now I can simply pass the URL in as the first parameter, and then I can create my callback function, and I can see everything all in one line, which is brilliant.

Now this callback function is going to give us back a response.

So normally, when you see it written, say in the documentation, you'll see people shorten it to res, but because we've already got req and res here, I don't want to have another res, because it's kind of confusing, so I'm going to call this the full name, the response, and when we get back our response, all that I'm going to do is just log this response to see whether if this entire process of making a HTTP get request over the Internet to this URL, where we're supposed to fetch some data, whether it actually works, and whether we actually get something back.

So now let's hit save, and let's refresh our localhost:3000.

Now if we go to our Hyper terminal, you can see that we've gotten back a whole bunch of data, including the method of request that we made, the path that our requests went to, and most importantly the status code that we got back from the external OpenWeatherMap server.

And it says 200, which basically means a OK. So now that we've got everything working, in the next lesson we're going to dig into our response a little bit more, and we're going to learn more about the status codes and how to get the actual data out of all of this mess.

So for all of that and more, I'll see you on the next lesson.

