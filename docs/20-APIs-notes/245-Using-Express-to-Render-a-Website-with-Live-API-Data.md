# 245 Use Express to Render a Website with live API Data

## Fetching data 

### From external servers, to JSON, and using the logged data

So in previous lessons, we saw how we could fetch some data from an external server, and then get the data in the form of a JSON, and then parse it into an actual Javascript object, which we can dig through to get the pieces of data that we want.

So now that we're able to log the data that we're interested in, the next step is putting it onto our web site.

## Revision from our Node and Express modules

### Response

This will be a little bit of revision from our Node and Express modules.

In order to pass the data back inside our app.get, we have to tap in to our response.  This is the response that our server is going to send to the client’s browser.  Now, in this case, the response could just be the data that we've got, right?  So we could say res, which refers to this response.  Now you see why I didn't want to name this res as well, right, because it would be mightily confusing which one I'm using.

So res refers to our app.get response, and the response we’re going to give the browser is going to be a send method.  So we're going to send the data that we've got.

“The temperature in London is “, and then we'll tag on the temp at the end here, and then maybe we'll even add a degrees Celsius.

### Setting headers

Now remember that, if we run our code as it is right now, it's going to crash, because we can only have one res.send in any given one of these app methods.  So we can't send here and then send here, because once we call send, then that's basically the end. There’s no more sense going forwards.  And if you do try to do that, you'll end up with an error that says something like this, “Cannot set headers after they're sent to the client. Error HTTP headers sent.” Something like this.  Instead we're going to delete this previous send, hit save, and now, when we refresh our web site, you can see we're actually getting the data, and we're displaying it in the web site.

The temperature in London is 6.27 degrees Celsius.

### Send data as h1

Here's a question. How can we send this as a h1 instead of just a piece of text like this?  Pause the video and see if you remember how to change it.  All right.

So we can actually write HTML in our res.send or our res.write.  So all we have to do is just to wrap the final string inside a h1 tag, so the h1 beginning tag and the h1 end tag.  Now if we go back and we hit refresh, then we actually get it displayed and formatted in the way that we want.

## Challenge

### Weather Description

Here's your challenge.  See if you can remember how we can also send the weather description, so something like,  “The weather is currently “, plus the weather description.  But remember that we can only have one res.send, because that's the end, that’s the final thing that happens.  So see if you remember how you can do this. Pause the video and try to complete this challenge.  All right.

### Res.Write

So we know that we can only have one res.send, but we can have multiple res.write, right?

So we're going to wrap this inside a res.write, and we're going to then wrap this inside another res.write, and finally we're going to call res.send once we've written all the things that we want to send.  And our weather description is probably going to go in as maybe a paragraph, or it could be a h3, depending on what it is that you want.

So now when we refresh you can see “The weather is currently overcast clouds. The temperature in London is 6.25 degrees”, and we've now been able to send multiple lines of HTML using our res.  write in combination with our res.send.

### Display Images with Condition Codes and Icons

The final thing that I want to display in here is an image.

And if we go back to the API for OpenWeatherMap, you can see that they actually have a bunch of condition codes in their API. The weather condition codes are these ones here, the ID of the weather, and they correspond to different weather conditions, whether if it's a thunderstorm, or drizzle, or rain, or snow, etc.

But we also get back an icon name, and that icon name corresponds to the weather condition as an image, and OpenWeatherMap actually provides all of the images for all of the icons that they send you.  All you have to do is just fetch it like so.

So say if the icon was 10d, then you would insert this 10d into this URL to get the image, and leave everything else as it is. And the image would look a bit like this, which we can use display into our web site.

So let's see if you can figure out how to get hold of the icon from our weather data.  Pause the video and try to complete that challenge.  All right.

### Solution

So it's pretty simple, because we already know how to get the description. Then the icon is as easy as taking all of this, and then just getting hold of the icon at the very end.  Now the alternative is, of course, you could have also just copied the path here and pasted the path in as well.  But once we've gotten the name of the icon, we have to create the image URL, and this comes from our API here.

### Refactoring elements

And so I'm just going to copy this entire URL, and paste it in here as a string. And then, instead of using this part, which is the icon ID, I'm going to add it in by using string concatenation.  And of course I'm going to insert the icon that came from here.  Now that we've got the image URL, we're going to write another res.write, and this one is going to contain a image element.  So pause the video and see if you can send back to the browser an image element that will display this image URL.  All right.

So we're going to again be using res.write, and in this case though, we've got an image element that we're going to create. Now images are self closing tags, so we don't need to close off the tag, but what we do need is a source, and the source is going to go right here.  So let's pass in our image URL and hit save.  And now when we refresh our web site, you can see the corresponding image is now picked up.

Now we've got our live weather condition, temperature, and even the condition image being displayed in our web site, and that's all thanks to us being able to get live data using an API, making a HTTP get request to get the data as a JSON format, parsing it and fetching the specific items that we want, and then sending it back to the browser using the HTML that we want to write.

## Next Lesson: POST Request

Now in the next lesson, I want to show you how we can make a post request from the web site, so that the user could log onto our web site, type in a particular city that they're interested in, and then we can give them the actual weather for that city.

So for all of that and more, I'll see you on the next lesson.
