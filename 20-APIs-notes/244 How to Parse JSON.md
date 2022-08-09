# 244 How to Parse JSON

Now in the last lesson, we saw how we could use the native Node HTTPS module to perform a GET request across the Internet using the HTTPS protocol.  Now we passed in a URL, which is this one.  And once we got a response back, we simply just logged the response.  Now, if we wanted to, we can actually be more specific.

We can actually log the status code that was associated with the response.  So if I go back to my browser and hit enter to refresh, I'll be able to trigger my code again, and we'll be able to scroll to the bottom and see the response code that was printed.

So we got 200.

Now, if you're curious what 200 means, then you can head over to the MDN web docs and take a look at all the response codes that you could possibly get back from your HTTP requests.

> [https://developer.mozilla.org/en-US/docs/Web/HTTP/Status](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status)

## HTTP Response Status Codes

Now, they kind of fall into broad categories, the one hundreds are sort of informational, the two hundreds are usually a really good sign, the three hundreds refer to redirect web sites, which normally you don't encounter, the fours are interesting because they usually mean that the client, or the user, who's interacting with your web site made some sort of error, and finally the fives are an error on the server. But you can actually dig into it.

So, for example, 200 specifically means just a OK, the request is successful. And because we were making a get request, then it means the resource has been fetched and it's transmitted to the message body. That is the best outcome that we could get when we’re making an HTTP request to an external server.

Now, however, we could be getting one of these other ones.  Now the one that you've often seen on the Internet, if you've spent any time on the Internet, is the 404, and this corresponds to the server that you made the request to cannot find the requested resource, so basically it's a resource not found.

Now, we can trigger this quite easily by simply changing one of these paths.  So instead of calling it weather, let's say we made a typo and we wrote weatheer  instead.  Now if I hit save, go back, refresh my web site, go to my Hyper terminal, you can see I'm getting 404.

The OpenWeatherMap server is basically telling me that this resource that you're looking for at this path, weatheer, does not exist.  So let's restore our path.

Now, another type of error you'll often get is when you have to authenticate yourselves with an API provider.  Let's say that you had made an error in the app ID. So let's just botch our app ID by adding an extra character in front of it.  Now I'm going to hit save, refresh my web site, now go back to my Hyper terminal, and you'll see I'm getting a 401.

And, if we look it up, a 401 refers to an unauthorized HTTP request.  So this is because we did not authenticate ourselves properly with the right app ID.  So let's delete that extra character, go back and refresh, and we now get our 200.  This is what we're looking for
most of the time.

But very often, when we're testing APIs, when we're working with external servers, we're very likely to get different messages back.  So when you do, have a look at the documentation on Mozilla, and match it with the corresponding code to see what's happened.

There’s some pretty funny ones in here if you actually read it, including the error code 401, I'm a teapot.  The server refuses to attempt to brew coffee with the teapot. And this is just a little remnant leftover from some past April Fools joke, although you might one day encounter a server that actually does give you that code.

> [httpstatusdogs.com](httpstatusdogs.com)

Now, if you're interested in a bit of light hearted entertainment, there's also the HTTP status dogs, which basically uses dogs from the Internet to represent each of these codes, like 200, or 404, Not Found, 401, Unauthorized, etc., and it's pretty hilarious to look through.

## Checking the status code 

### Tap into the response we get back to search for data

Now, in addition to checking the status code, we can also tap into the response that we get back, and call a method called on, and search through it for some data.  Now this will correspond to the actual message body that we got back, that OpenWeatherMap has actually sent us.  So let's try to implement this method. Because our response is spelt out fully, we’ll have to tap in to response. and then we're calling the on method, and then inside the on method, we can tap into a specific moment, say when we receive some data in the response.

So let's first call the response on when we receive some data. And I'm going to create a callback function that's going to contain the data that we get, and then I'm just going to log the data.  Now let's hit save and go over to our web site, refresh, and check out the response in our terminal.  You can see that we're getting the response code 200, which means everything is working, but the data that we're printing out looks a little bit funny.  It seems to be all jumbled up and we can't really make much sense of it.  So what exactly is this?

Well, this is actually hexadecimal code.

And if we copy it and put it into a hexadecimal converter, we can convert it to text, and you can see that the text we're getting back is pretty much the beginning of the JSON that we're getting back from OpenWeatherMap that we saw earlier here.

> [https://cryptii.com/pipes/hex-to-text](https://cryptii.com/pipes/hex-to-text)

And this is just simply a different way of representing that data.

Now what would be far more useful for us, though, is to actually get a Javascript object, and we can do that by converting the data into a Javascript object. And to do that we would need to write JSON.  parse, and this will turn a JSON in some sort of string format, say the hexadecimal, or binary, or text, and then turn it into an actual Javascript object.

So inside this method I'm going to pass our data, and now let's store this inside a constant called weatherData, and let's go ahead and console.log that. And now you can see that we're able to print an entire Javascript object, so there's no strings in the keys, and everything is organized as you would any other Javascript object.

We've basically taken our IKEA flat pack, and we've unwrapped it, and followed the instructions to recreate the 3D wardrobe, or, in our case, the 3D Javascript object using JSON.parse.

Now we can also go the other direction if we wanted to.

Let's say that we had an object called, I don’t know, let's just call it object, and let's give it a name, let’s put my name in it, and then maybe, and then taking this object we can use the other method from JSON, which is stringify. And when we stringify an object, it basically does the opposite.  It will go ahead and turn a Javascript object into a string.

So now if I print it, you can see that it's completely flat packed like this, right, taking up the minimum amount of space necessary. All our keys have become strings, but keeping all of the syntax that's required to be able to bring it back to life later on.

And this is effectively going the other direction, taking the 3D wardrobe and packing it down to a single string using that method, JSON.stringify.

Now let me delete all of that, and I want to be able to use my weatherData to pull out specific pieces of information from it, like the temperature, or the description, or an icon that I can use to display in my web site.

So how do I do this? How do I get this temperature specifically printed out?

Well, because we've got basically one huge nested object, we can tap into the object, look for the main key, and then look for the temp key.

So the code for that would look like this.

Let's create a const called temp, and then let's tap into our weatherData.  The first level that we go down is this indentation, and we get to a key called main, so weatherData.main.  And then once we're inside the main object, then our value lives inside a key called temp, so then it's .temp.

So now if I log my temp, we should be getting 5.84.  So it's 5.84 degrees here in London at the moment.

Now, while that wasn't very difficult, that also wasn't a very complex JSON.

If we end up with a really long JSON, sometimes it might get confusing digging through the levels and seeing how to get to each of these values.

Now I want to show you a neat trick.

So earlier on I showed you that you can install the JSON Viewer Awesome as a free Chrome browser extension.  Once you've done that, if you head over to the API that we're calling over here, so putting this particular URL into the browser, then we get back the same data here.  And if we want to access a particular piece of data, all you have to do is click on it, hover over this icon, and then click ‘Copy path’.

Now this path, if I paste it, is basically the way to navigate to the piece of information that you're interested based on the object that you have.

So the object we've got back is weatherData.  So we write weatherData. and then paste in the path, then we get hold of the temperature.  Now if I get hold of the feels_like temperature, then I can also do exactly the same thing. It becomes main.  feels_like. This is a really neat tool for us to be able to work with JSON, and I highly recommend you install it if you haven't got it already.

Now going back to our JSON, the next piece of data I want is the description of the weather, so you can either use the method of looking through it and see how you can get this description, or you can use JSON Awesome and get the path and do what we did just now.  But I want you to try and print out the weather description, so pause the video and give that a go.

All right. Let’s create a new constant, and I'm going to call it weatherDescription, and it's obviously going to come from our weatherData JSON object. And then I'm just going to use the easy way, which is write a dot, and then take my description, copy the path, and then paste it over here. So effectively what we're doing here is we're taking this entire object, we're digging into the weather object using that key, and then the weather object is actually an array. It’s an array with only one item.

So we get hold of that item using the 0, and then we get hold of the description by tapping into that key.  And now, if we console.log this weatherDescription, then we get “overcast clouds” being printed.

## Overview of Lesson

So in this lesson, we looked at how to get hold of the data from the response, and then to parse the JSON data that we get back into an actual Javascript object, and then we saw how we can dig through our Javascript object to get these specific pieces of data that we're interested in.

## Next Lesson 

Now in the next lesson, we're going to be taking these pieces of data, and using Express and Node to put the data into an actual HTTP web site that we can display to our user. 

So head over to the next lesson to continue building out our site.

