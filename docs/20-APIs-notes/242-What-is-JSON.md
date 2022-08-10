# 242 What is JSON

A JSON format stands for Javascript Object Notation. 

And you might have noticed this as well.

## Key-Value Pairs

The data that we get back looks remarkably like how we create Javascript objects, where we open up a set of curly braces, we have our key, then our colon, then our value, and each of these key value pairs are then separated by commas, and we can embed objects inside other objects.

Now there are a couple of differences though, say, for example, when we create an actual object in Javascript we always have a var or a let keyword in front, we have the name of the object without any quotation marks around it, because it's not a string, and inside our object, the keys are never strings, right?  They're simply written as they are. 

Now the reason why we use a JSON to pass data around on the Internet is because it's in a format that can be readable by a human, but it can also be easily collapsed down to take up as little space as possible.

So it's almost like if your Javascript object is a full sized wardrobe, but while you're transporting it, if you bought it from the store and you're taking it home, you probably don't want to move it as an entire wardrobe, right?

Just like the flat pack furniture at IKEA, you can collapse all of that data down into a single string.  And as long as we maintain where all the curly braces and the colons and the commas are, then at a later stage, once we received that JSON as a string, we can build it back up into the original object.

Now JSON is not the only format that we can receive data from APIs. 

Very frequently you'll find that various APIs, like OpenWeatherMap, will provide multiple formats for you to be able to get data from them.

So in addition to JSON, you'll often find a format called XML, which is extensible markup language, or it could also come back as simple HTML, hypertext markup language.

But JSON is currently the most favoured format, because it's much lighter weight than the other two, and also because it's very easy to turn back into a Javascript object.

Now if you want to prettify the output that we get in our browser, similar to how Postman does it, turn the raw output into a pretty version, you can go ahead and download a Chrome browser add on called JSON Viewer Awesome.

It's, again, free to download, and you can simply add it to Chrome as an extension. Once it's been added, you'll see it up here.

And now if I go back to that previous API request and I refresh it, you'll see it now gets formatted by JSON Viewer Awesome into a tree structure, or a chart structure, or the original JSON input.

Another really useful thing about JSON Viewer Awesome is, when we click on the individual pieces of data that we want, say this id, or this icon, and we hover over this green button, we can actually either copy the value, or copy the path that it takes to get to this particular value.

Notice how we can collapse some of these trees.

So this icon is nested inside an array, inside this weather piece of data, and then that is inside the original 13 item JSON object.

So if I go ahead and just paste what I copied just now, you can see that to get to that icon, we first tap into the JSON object, and then get hold of the weather object, and then get the first item, the 0 item inside the array, and finally we tap into the value of the key icon.

So once we've turned our JSON into a JSON object, this is how we would get hold of this piece of data to use in our web site.

## Putting APIs into Practice

### OpenWeatherMap API with JSON data format

This is what we're going to be doing in the next lesson.

We're going to be putting into practice everything that we've learned about APIs and the JSON data format, in order to use the OpenWeatherMap API to create our own web site that shows the weather for certain cities, and also allow the user to search for the weather in certain cities.  This is what we'll be doing in the next lesson, so hopefully I'll see you there.

