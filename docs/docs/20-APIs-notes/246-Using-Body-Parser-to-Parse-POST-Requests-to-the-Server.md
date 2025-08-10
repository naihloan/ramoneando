# 246 Using Body Parser to Parse POST Requests to the Server

## Previous Lessons

### Fetching Data From API and Placing Into Web Site

In the last lessons, we've done the difficult part, which is fetching live data from the OpenWeatherMap API, and then getting that data formatted and placed onto our web site, like so. But it's a little bit boring if it just displays the weather for London, right?  That's not much of a web site.

## Get The User To Type In Data

What if we could get the user to type in the city that they're interested in, and then we simply replace this query with whatever city they want, so like, maybe, Paris? So we could say, well, Paris currently has scattered clouds and it's about the same temperature. But of course we'll have to change this, and we'll have to add some sort of input to let the user be able to do this.

### Break down URL parts

Instead of having an entire long string here, I'm going to break down each of the parts of our URL.  So I'm going to create a const called query, and I'm going to set that to equal London, at least for now, and then I'm going to delete this part here and replace it with the query. Now additionally, I'm also going to take out my app ID, and I'm going to save that as a separate const as well, and I'll call that apiKey. And we'll save it under these two names.  And then I can replace that with my apiKey.  And finally I'm just going to take out the units, and add it on at the end as well.

### Change Data to Update Query

So now all we have to do to change the data that we get back is to update this query.  So how can we do that?  How do we update it?

### Create an HTML Template

#### Inputs

Well, if we go into our index.html, which currently is completely blank, we can start off by creating a HTML template, and our title will be called our Weather App, and inside the body all I'm going to do is add a text input.  So this is going to be a input of type text, and it's going to have a name which is called the cityName, and it's not going to have any value at the moment.

#### Labels

Now in addition to an input, I also want to have a label, and it's the label for this particular input.  So let's give it an id, and let's call the id the cityInput, and let's put cityInput here as well.  Now our label is going to say “City Name:”. Hit save.

And now we want to be able to render this index.html when the user calls app.get at the root route.  So instead of all of this, I'm going to cut it out and I'm going to paste it down here, and I'm just going to comment out this code for now.

### Show Label and Input

Now our web site is again quite simple, and inside our app.get I'm going to try and send this file, index.html, over to the browser.  I'm going to call res.sendFile, and then I'm going to get hold of the directory name, and I'm going to add “/index.html”.  And hopefully, when I refresh my web site now, it's going to display that web site.  It's going to show my label and my input.

#### Send Data: "Go" Button

So now that I'm free to type whatever it is I want in here, I need some way of sending that data, right?  So I need a button in here as well.

So let's add a button, and the type of button is going to be a submit button.  Now this button doesn't really need a name, but what it does need is some text.  So we'll just call that ‘Go’.

### Create a POST Request When The User Sends Data

And if I wrap all of this inside a form, then I'll be able to create a post request when the user hits this button. And that post request is ready here in the method, but the action is actually going to go to our root route. Our form is going to make a post request to this route on our server, and we would have to catch it using app.post, then specifying the root route, which is the one that we said we would hit up over in our form, and then create our function with our req and res. Inside here we’re just going to log, “Post received.”

So now let's refresh our web site. We can see our label, our input, and our submit button.  Let me just write the word ‘London’ in here, click go, and then go into our Hyper terminal, and we can see “Post request received.” So it's hit up our post route, and this is why we're getting that logged.  But in order for us to actually get the text that the user typed into the input, we have to do a little bit more.

#### Install Body Parser

We have to actually install another package that we've been using previously. 

So I'm using Control C to exit out of Nodemon, so that I see my prompt again, and I'm going to use NPM to install Body Parser, body-parser. And body-parser is the package that's going to allow me to look through the body of the post request and fetch the data based on the name of my input, which is called cityName.

#### Create A Constant Called bodyParser

So now let's go ahead and create a constant called bodyParser, which is going to require the body-parser module, and then let's get our app to use bodyParser, and we're going to set the urlencoded to use the extended as true setting. From previous modules, we've used this a few times, and this is just the necessary code for us to be able to start parsing through the body of the post request.

#### request.body

But once we've done all of that, instead of console logging, “Post request received.”, we can go one step better than that. We can say request.body. the name of the input, which is called cityName, and we should now be able to console.log the text that went into that input.

### Check Input Results In Terminal

So let's delete the previous console.  log, hit save, start up our server again with ‘nodemon app.js’, and now go to refresh our web site, type in ‘London’, hit ‘Go’, and check our Hyper terminal.

#### Receiving Data From POST Request

And you can see we're now receiving our data from our post request. Now that we've parsed through the body of the request, you can see now how we can start using that as our query, right? Let’s go ahead and take all of this, and paste it into our post request, and then uncomment it using Command /, and instead of console logging the request.body .cityName, we're going to be using that, of course, as the query.

### Nothing Hard-Coded

So instead of having our hardcoded ‘London’, we're going to write request.body.cityName, and we can delete our console.log now.  So now if we hit save, go back to our web site, refresh, let’s type in a different one, let's say what's the weather like in Paris. And now it sends us the weather, but of course we need to modify this text as well.

### Change Words For Queries

So down here where it says ‘London’, let's get rid of that and let's instead add the query in here.  So let's go back and let's check a different place.

#### Bali Weather

Let's see what is the weather like in Bali.  Here you go.  The temperature in Bali is 30 degrees, pretty nice, but there's currently thunderstorms.  And that's what our image shows as well.

So now we're able to get dynamic data based on what the user typed into the input, catch that data in our app.post, and then use that query to structure our URL and get the data for that particular location.

### Overview

Now we've seen all aspects of our API in use, including authentication, including paths, including queries, and we've been able to parse the JSON data we get back and send it over to the browser using our Express and Node modules.

## Next Lesson

### Email Collection Web Site

Now in the next lesson we're going to be taking this one step further, and we're going to be building our final project, which is our newsletter email collection web site, which is basically going to be a landing page that you can use to collect user emails.

So for all of that and more, I'll see you on the next lesson.

