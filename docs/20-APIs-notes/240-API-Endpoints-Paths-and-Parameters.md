# 240 API Endpoints, Paths and Parameters

Now in the last lesson we looked at how an API works, at least from the theory point of view.

Now in this lesson, I want to talk about how to actually put it into practice and use an API to get some data back from a couple of web sites.

## APIs: Endpoints, Paths, Parameters, Authentication

Now, when we're talking about APIs, you will often need to think about things including endpoints, paths, parameters, and authentication. These are the four things I want to cover, and we're going to use a few APIs so I can show you what each of these things do.

## Endpoints 

The first thing I want to show you is an API endpoint, and every API that interacts with a external system, like a server, will have an endpoint. So who is this in the photo? Well, it's our friend  Kanye Rest. So this is a free REST API for random Kanye West quotes.

### [api.kanye.rest](api.kanye.rest)

This web site hosts a database of Kanye West quotes, and we can access the data from this web site by using heir API. And the endpoint of the API is this URL right here, api.kanye.rest. And whenever you're using a different API, they're going to likely have a different endpoint, but they'll always tell you what it is in their documentation. Now because this is such a simple API, they've only got one thing that you can do with it, which is to get a random quote.

Let's go ahead and see what data we can get from this.  So if I take this URL and I paste it into my browser bar, then my browser makes a get request to the kanye.rest server, and they send back a piece of data, which is a quote, and it says, “I hate when”.

And the quote is, “I hate when I'm on a flight and I wake up with a water bottle next to me like oh great now I gotta be responsible for this water bottle”. Classic Kanye.

Let's say that we created a web site where you could go onto the web site and every day you get a different Kanye quote.  Well then you can see that we could probably do that just by using this simple API.

## Paths And Parameters

### [sv443.net/jokeapi/v2](sv443.net/jokeapi/v2)

Now usually the web sites that have API tend to have more data than just a bunch of random quotes. In addition to endpoints, there’s also API paths and parameters that you can use in order to narrow down on a specific piece of data you want from an external server. In order to illustrate parts and servers, we’re going to use a joke API, which is an API that allow you to access a database of random jokes, and through the use of path and parameters, we’re going to customize the kind of jokes we want to get back. In the course resources, you’ll find a link to the joke API, or you can simply type out this URL (sv443.net/jokeapi/v2).

Now this joke API is a little bit more complex than the kanye.rest API.  It's more complicated because it has more options for you as the programmer.  So, for example, you can choose which category of jokes you want.

Do you want any sort of joke or do you want just programming jokes or do you want just dark jokes, or if you wanted to blacklist jokes that are not safe for work, or religious, political.  You can change the joke type: a single joke or a two part joke, and you can even search for a particular string that is contained in the joke.

So where does all of this customization go if we wanted to implement it? Well firstly, we need to figure out the end point, which is the starting URL.

So if we scroll down in the documentation, you can see there's a whole bunch of endpoints, and this end point is the one that you use to get a joke.

So the end point looks like this. But notice how if we just put this URL into our browser, you can see we get an error.  It says, “No matching joke found”, “The specified category is invalid”.

So what's going on here?  Well, it's because, even though this is the end point, this is the starting URL, we have to add one other thing to complete it, which is the category or categories of jokes.

### Try it out section

Now if we go up here and we use the ‘Try it out’ section, you can see that if we chose Any category, it goes to ‘joke/Any’, if we chose just the Programming jokes, so we check that, then it goes to ‘/Programming’.

So the difference here is that we need to specify a specific path after the end point.

So if we see this as the root of the tree, we have to add a branch. And let's say that our branch was the Programming branch.

So now it's going to give us a random programming joke, and it's a two part joke.  “Why did the functional programming developer get thrown out of school?” “Because he refused to take classes.” Well, that's a really bad joke.

##  Paths 

### [/sv443.net/jokeapi/v2/Programming](/sv443.net/jokeapi/v2/Programming)

Now we're introducing this concept of paths when we're trying to access an API.  And notice how the end point is the URL up to that last forward slash, and then if we went down the Programming path, then we would only be getting programming jokes, but if we change the category to Dark, then we would only be getting jokes from the Dark category.

Now remember when we were learning about Node and creating our backend, we know that in order to create a new path, we have to plan for it ahead of time.  So somewhere on this joke API server, they have to be able to catch when a request is made to this URL/Programming path, and then filter through all of their jokes and give us a random programming joke.

Now sometimes we might want to get a piece of data from an API that is something that they can't plan for.  So, for example, if I wanted to search for a joke that contains a specific word, let's say I wanted a programming joke that contained the word ‘debugging’, well then they probably wouldn't have thought of this ahead of time.

##  Parameters

They probably don't have a path to address this specific query, so in order to allow the API to be flexible enough to deal with custom queries like this, usually APIs allow you to provide parameters. 

And parameters go at the end of the URL, after a question mark, like this.

### And then there's a key value pair that goes into the URL.

> The key is called ‘contains’, so that's basically our search string.
> And then after an equal sign is the query. Notice that’s exactly what I typed in in here.

### Now in this ‘Try it out’ section here, you'll notice that there are other parts which are also queries

For example, if I wanted to blacklist all the Not Safe For Work jokes, then you can see that that is a blacklist flag, and then it's equal to ‘not safe for work’.  And if I wanted to get rid of all the two part jokes from the jokes that I get back, then we have a type equals ‘single’.

And notice how if we have more than one query, so here we've got one, two and three queries, the first query follows a question mark, and every subsequent query follows an ampersand, or an and symbol, like this. 

### Use symbols to specify parameters

So when you want to specify a parameter, remember that you need these symbols in the URL to be able to do that.  The parameters come after a question mark, and then they are set as a key value pair with an equal sign in between.

And if you want to have more than one parameter, you separate each of the key value pairs with an ampersand symbol. 

Let’s see what we get if we go ahead and use this particular request.  So I'm going to paste that into my browser, and I'm going to make this request from my browser to the joke API server.

So I've got the category which is ‘Programming’, because I've used that ‘Programming’ path there, and then I've blacklisted all the jokes that are not safe for work, I have specified that I only want a single part joke, and I want something that contained the word ‘debugging’.

### Joke: The six stages of debugging

So this is the joke I get back. “The six stages of debugging: 1. That can’t happen. 2. That doesn't happen on my machine. 3.  That shouldn't happen. 4.  Why does that happen?  5. Oh, I see. 6. Man, how did that ever work?”

So now you can see, through the use of paths and parameters, we’re able to narrow down on the data that we get back from the joke API to the precise thing that we want.

Now that you've seen basic APIs in action, and you've seen how we can use paths and parameters to get specific pieces of data from an API, I want you to have a play around with the joke API.

Take a look down at the documentation, see what sorts of things that we can get back from the API, and try formatting your URLs and to make some requests using your browser.

##  Authentication

So if you wanted to get a joke that contains the word ‘arrays’, or say if you wanted to see which categories are available from the joke API, have a play around with it, and make sure that you understand what's going on here when we're typing out this long URL. Pause the video now and try to give that a go. On the next lesson, we're going to talk more about authentication and decoding some of this data that we get back. 

Pause the video now and give that challenge a go.
