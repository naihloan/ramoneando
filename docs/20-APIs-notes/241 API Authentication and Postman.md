# 241 API Authentication and Postman

Now in the last lesson, we saw how we could work with the kanye.rest API and the joke API to start querying these external web sites for pieces of data that they may have.

We saw how we could use paths as well as parameters to narrow down on the exact type of data that we want.  And we saw how we can make these requests using a formatted URL and putting it through our browser.

Now both of those web sites had very simple pieces of data, either a database of jokes or a database of Kanye West quotes.

Now when we come to data that's more monetizable, or allows developers to build more complex applications that might be used by hundreds or thousands of users, then these web sites have to start thinking very carefully about how to either monetize your use of their data or how to limit your use to a threshold.

## Authentication

And the way that they would do that is through authentication.

So every time you make a request through the API, they have to be able to identify you as the developer, and they have to keep track of how often you're using their server to get data, and then charge you, or limit you, accordingly. 

In order to illustrate this concept of authentication, we’re going to use the openweathermap.  org’s API.  And if you take a look in their pricing, they tell you that it's free to use their API as long as you don't make more than sixty requests per minute. So every single time we typed in this particular request to an API and we hit enter, that’s a single request. And if you make more than 60 a minute, so more than one a second, then they're going to limit any further requests.

So for most developers to get started building your app or your web site, this is more than enough.  But as you start getting more users, you have more traffic, and you're probably likely to have more revenue, then these data providers will also start charging you to use their data.

But the way that we would implement authentication in any of these categories is exactly the same.  So let's see how we can use an authenticated API like this one.

So the first thing to do is to go ahead and sign up to the OpenWeatherMap, if you haven't already.

So you're going to create a new account.  And don't worry it doesn't require any credit card details or anything other than a user name and email.  Now once you've signed up then go ahead and sign into your account.

And once you're signed in you should see a page that looks like this.  And up here there are a whole bunch of tabs and you want to tab over to the API key section.

Now here you can create a new key if you don't see a default one here. Once you've created a key, then you're just simply going to copy this entire string, and you're going to be using it when you make any requests to the API.

So let's see how we can make a request to this weather API.
Let's take a look at the API docs for getting the current weather data.

Now if you read through this documentation, you'll see that there's a whole bunch of ways that you can get weather data, either querying by city name, or by a city ID, or by the geographic latitude and longitude values, and a whole lot more.

Now let's say that I want to use the simplest, which is to query by a city name.

Then you can see, if we click on the example API call, that they've got some sort of end point that ends here, and then begin the parameters, right,
because we said the parameters start with a question mark.

So the first parameter has a key of q, which probably stands for query, I would guess, and then the name of the city, and then the next parameter is the app ID, which corresponds to the API key that we've got just now when we signed up.

So this, overall, is the structure of this sample API call.
Now the reason why it’s a sample is because here they provided you a demo API key.

Now in order to make an actual API call, we have to look at that actual endpoint, and it actually looks more like this. Instead of samples.openweathermap,
it’s actually api.openweathermap.

So if I change this from samples to api, then you'll see that this won't work with the app ID that they provided by default, and we get the error message “Invalid API Key”.

Now remember that earlier on we already signed up and we actually got our very own app ID, and you should have done this as well.

Well in that case, if you simply paste that app ID here, after the equals sign, so this is the key value pair here, then we go ahead and make our request by hitting enter, you can see we get our data back. And this is the actual data for the current weather in London.  And as you can see, as usual, there's a few clouds in the sky.  This is the default weather for London pretty much, but it's not too bad.

You can try changing this q to a different city.

## Parameters

Let's check what the weather is like in Paris. And we get some temperatures back, and we get some wind speeds.  We get humidity and atmospheric pressure. But you might notice that the temperature is kind of weird, right?  It seems like Paris is burning.  283 degrees.  Even if that's Fahrenheit, that's still too high.

What's going on here? Their default unit for temperature for OpenWeatherMap is actually Kelvins.  And in order to get either imperial, so Fahrenheit, or metric, Celsius, we have to add another parameter.

So depending on whether if your brain works in metric or imperial, go ahead and try to add these parameters to our API request, so that you get back the temperature in a format that you understand. Pause the video, and give that a go.

## Key Value Pairs

All right. So we know that the first parameter gets added after a question mark, and it has to be added in a key value pair separated by an equals sign, but every subsequent parameter gets added after an ampersand.

So if we want to add another parameter here, we're also going to add an ampersand, and then the name or the key of the parameter is called units, and then the value could be imperial or metric.

So I'm going to add ‘units=metric’ because I want the results back in Celsius.

And you can see that Paris is currently 10.3 degrees.
That sounds a lot more reasonable.

Now remember that the order at which you put these parameters doesn't matter.  So, for example, I could have the query first, which is Paris, and then have my units, which is metric, and finally have my app ID like this, and I still get the same results.  The order doesn't matter at all, as long as they're separated by these ampersands, or, if it's right at the beginning, the question mark.

## Postman

Now notice how, as we start using more parameters, and especially when we have parameters with very long values like this, it gets very difficult to test our APIs using a browser, and editing these URLs.

It's very very fiddly, and you can often make very simple typos, because it's hard to see where each parameter ends and the next one begins.

So very often, when we're testing APIs, we'll use a tool called Postman.

It's completely free to download, and it's available for Mac, Windows and Linux.

So I recommend heading over to postman.com/downloads, and download the version that's right for your computer.

Now once you've done that, you'll end up with an application that looks something like this.  So let's see how we can make that same request using Postman.

## GET Requests & Queries

So I'm going to click on this plus sign to make a new request, and it's going to be a get request.

I'm going to try and get some data from our OpenWeatherMap. 

And I'm basically going to try and do the same thing as before, so I'm going to use the API end point, which goes up to the first question mark, and I'm going to paste that in the URL, and then I get to add all my parameters.

So the first parameter is q, because that's the parameter to query by city name.  Now if you wanted to query by latitude, longitude, or by a zip code, then you can use these different parameters.  But in my case I'm just going to stick with the simplest.  So I'm going to put the key as q and the value as London.

## URL Structure & Key Query Checkboxes

Notice how at the top here, it's starting to structure my URL for me, while I get to work with this much clearer user interface, which has a table, and has like a checkbox for me to add or remove, and it saves this data if I want to use it later on, etc..

So let's add the next piece of data, which is our API key. And remember that the API key’s parameter is called appid.  So let's add the app ID and paste in the API key, and it's going to again add that to my parameter list.

And the final thing I'm going to do is I'm going to change the units to metric.  Now I'm going to click ‘Send’ to send this request to OpenWeatherMap, and I get back my data.

Now notice how this data here is structured in a much better way, and the reason is because we are pretty printing the results, instead of, well, ugly printing the results.

## JSON

What's happening here is, when we make our request to the OpenWeatherMap servers, the data that we get back is in something called a JSON format.

And what exactly is a JSON format?

Well, you get to find that out in the next lesson.  So make sure that you've signed up for a account on OpenWeatherMap, and you've had practice using Postman as well as using your browser to authenticate yourself with the OpenWeatherMap API, and you’re getting the data back in a JSON format.

Once you've done that, head over to the next lesson, and we'll find out more about the format of the data that we get back.

