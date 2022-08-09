# 248 Setting Up the Sign Up Page

## Node and Express Page Challenge

### Set up the project

All right guys. So you should be pretty familiar to setting up new projects using Node and Express by now.  So I want to set this to you as a challenge, and right now on the screen you should see a checklist of a number of things that you need to do in order to set up this project.  And I want you to pause the video and try to do all of those things so that we get to a point where we're ready to go and we can start coding up our sign up form.  So good luck and I'll see you soon.  All right.  So I hope that went all right.

We're going to be repeating these steps every single time we create a new project, and it's pretty simple once you get used to it.  So first things first. We’re going to change directory into a location where we want to create our new project, and we're going to call it Newsletter-Signup.

And now that we've created this new directory, let's cd over to it, and inside here we're going to create our new files. And the file that we're going to write our server side code in is going to be called app.js.

Now in a lot of Node.js, and especially Node.js projects that use Express, you'll see that their main server file is called app.js.

Now it's actually completely up to you what you want to call it, but this is something that you will see out in the wild as well. If you don't want to create each of these files individually by writing touch this file, touch that file, you can actually chain them together just by using touch once, and then you can add all of the names, all of the files that you want to create in one go.

So, for example, we need to create signup.html, as well as success.html, and also failure.html. By having all three files with a single space between them, when I hit enter, you can see that all three get created simultaneously.

So the command line is super powerful and it is here to be your friend. 

So the next thing to do is to create our NPM to initialize NPM.  And I'm just going to keep to these standard options just by hitting enter.  And finally I'm going to hit enter to create our package.json.

So now that we have that, we can go ahead and install our NPM modules. And again, just as I did with the touch command, I'm going to install a number of modules simultaneously, so add all of their names, and then I'll include a space in between, so that we can install all of them at the same time.

So the ones I need are body-parser, express and request.  So now let's hit enter, and we'll let that download in the background.  All right.

So now that it's done, let's open up our project in Atom, and let's head into our app.js and require those modules that we just installed.

So the first one was express, next was body-parser, and finally we've got our request package.  And let me just add in that comment, so that our JSHint is not going crazy on us.  All right.

Now that we've done all of that, the last thing to do is to setup our server to listen on port 3000.

So first things first, we need to create our app constant, and this is equal to a new instance of Express.  And now we can use that app to listen on port 3000.  And once that port is set up and ready to go, we're going to log that our server is running on port 3000.  All right. Cool.  That's it.

That's all you need to do to set up a brand new project.  And as you go along creating new projects, this process will very soon become second nature.

## HTML page

### Sign up form

Now that we've done all of this, the next thing that we need to do is we need to create a HTML page that has a sign up form on it.  So where can we get one of those in a hurry?  Well, it's time to start piecing together some of the different things that we learnt about in this course.

If you remember, in the Bootstrap module, we spoke about how Bootstrap can cut down on development time and make our web site look really nice.  So let's head over to getbootstrap.com and go over to their Examples section.  So here they've got a whole bunch of examples that allow you to quickly get a project started, and that's exactly what we're going to do.  So if you scroll down, you'll see that there are some complex forms, which is not what we want, but there's also some simple forms, and this is exactly what we're going to use.

So right click on this web site, and we're going to view its page source, and then we're going to select all of this, and then paste it inside our signup.html.  So now, if you right click on this and copy full path, then you can see that our page looks nothing like what they had over here.  Now why is that?

Well, the first thing you notice is that this doesn't look very bootstrappy at all.  The fonts are not bootstrapped, the buttons don't look bootstrappy.  So we haven't actually got Bootstrap enabled in our web site.  And why is that?

Well, if you take a look at this section where it says ‘Bootstrap core CSS’, well, they've actually got it included as a local file, and that file we don't currently have.  So let's go onto the Internet and grab the Bootstrap CDN so that we can also incorporate Bootstrap into our web site.

I'm just going to copy this entire link, and I'm going to replace this line with that.  So now let's go ahead and refresh our web site, and you can see that we've got a lot of the Bootstrap elements that have been enabled.  The fonts are now Sans Serif, and it's looking a little bit nicer.  The only problem is that they still don't look anything like each other, right?  And the reason is because, if we have a look at the source, in addition to the Bootstrap core CSS, they've also got a custom style sheet for this template. And you can find this template by following this link.  Aha.  So they've got some custom CSS here.  Well, let's go ahead and rip off that as well, so that we can put it into our web site.

Now I use these terms like rip off and steal, but actually it's fine. Bootstrap allows you to do this and it's set all of this up so that we can speed up our development time and make it easier for us to create beautiful web sites.  So inside our newsletter sign up, I'm going to create a new file called styles.css, and I'm going to paste all of that CSS into here.  And, as usual, we're going to change our link ref to refer to that CSS, which was called styles.css.

So now, when we refresh our web site, then you can see that we're getting pretty close to the desired look and feel.  Now all we have to do is just to modify the words and the inputs and the buttons to fit our project.  So inside our signup.html, we're going to change our title from ‘Signin Template for Bootstrap’, which looks like we obviously took it from somewhere, to our Newsletter Signup. Next is this image, which is the Bootstrap brand logo, which looks like this, and instead we're going to include our own custom image.

So I'm going to create a images folder, and inside this images folder I'm going to drop in a image that I have, which is called lablogo.png.  Now feel free to add in whichever image you would like for your newsletter web site because, after all, this is about your web site.  So now I can replace this source from this http address to “images/lablogo.png”.  This is a image called lablogo.png inside a folder called images, and that corresponds to what we've got over here.  So let's hit save and let's check to make sure that it appears. All right.  Looking pretty good.

Now let's change some of these bits of text. Instead of ‘Please sign in’, let's say ‘Signup to My Newsletter!’. 

And instead of having an email address and a password, what I actually want are three input fields: the first name, their last name, and their e-mail address, because we're not actually signing anybody in, we’re signing them up. So I'm going to add another input, and I'm going to delete these labels, because currently they’re only for screen readers. And I'm also going to delete our checkbox that says ‘Remember Me’, which we don't need.

So let's go ahead and add a new input.  So we have three of them now, and the first one, the type is going to be just a simple text input, and the place holder is going to be “First Name”.  The second one is going to be, again, type of text, and the place holder is going to be “Last Name”.  Now we don't need an id for our inputs, so I'm going to delete that.  And finally, the last one is going to be type email, and the place holder is going to say “Email”. All three of these are required, and the first one is automatically focused when we load up our web site, so that means it's got that blue highlight around it.  And, of course instead of saying ‘Sign in’, we should say ‘Sign Up’, or ‘Sign Me Up’. And the copyright text down here I'm just going to change to say ‘The App Brewery’, or whichever company, or your name, if you wish.

So now that we're happy with our text and our images, the next thing to fix are these input boxes.  You can see that in their input boxes, they all look very together, right?  And that's because the corner radius is only applied to the top left and right for the first input, and then the bottom left and right gets a rounded corner on the second input. And we can see that when we go into the styles.css, you can see that they're targeting the input that has type email and the input that has type password to apply these things to.  Now we no longer have an input with a type of password, so I'm going to change this one to .top, this one to .bottom, and I'm also going to add another class called .middle.  So now we can go over and apply those classes to our inputs.  So this one is going to have a class of top and this one is going to be middle, and this one is going to be bottom.

So now, if we take a look at our rendered newsletter page, then you can see that we've got the rounded corners for the top and the bottom looking pretty nice.  Now it's just the middle one.  It doesn't actually need any rounding of the corners, so we can go ahead and add the border radius to zero.  So that means that it no longer has curved edges.  And the final thing that you can fix if you want is this last bit looks a little bit heavier in terms of its shadow, and that's because we need a margin-bottom of -1 pixels just to pull it up a little bit.

And that is now looking perfect.

So, as you can see, at the moment I'm accessing this web site as a static page.  Now that's not how we do things anymore when we have a server, but, in order for that to work, you need to set up the get method for our home route, and you also need to make sure there's two S's in express.

## Challenge 

### Set up local host

So, as a challenge, I want you to set up the get route to our sign up page so that we can test it on the browser at localhost:3000. Pause the video and remind yourself of what we did in previous lessons in order to get our app up and running using the server.  OK. So this shouldn't be too difficult as we've done it a few times already.

The first thing to do is we're going to say app.get and then we're going to specify the route. And we're going to use the home route in this case, so that when people go to our home page, they first see our newsletter sign up. Then we're going to add our callback function with req and res, and inside here we can specify that our response is to send the file that is at the location of our directory name of the current file plus the string “/signup.html”.

So now when we request the home route from our server, then it should deliver the file at that directory name, which is something like ‘Desktop/Newsletter-Signup/ signup.html’.  Let's see if that worked by running our server with Nodemon, and we're going to use app.js to spin up our server. Server is running on port 3000.

So let's head over to localhost:3000, and you can see that something is not quite right. At the moment our changes to the text have been replicated, but our image is gone, and our CSS seems to be gone.

So why is that?

Well, if you take a look inside this web site, we get the Bootstrap style sheet from a remote location, but our custom style sheet is local.  So this is basically a static page in our local file system that we're trying to pull up.  And it's exactly the same story with our images.  In order for our server to serve up static files such as CSS and images, then we need to use a special function of Express, and that's something called static.

So we need to say app.use(express.static), and inside the parentheses we're going to add the name of a folder that we're going to keep as our static folder, and I'm going to call it public. 

So now, inside my Newsletter-Signup, I'm going to create a new folder called public, and inside this folder I'm going to add a new folder called css, and I'm going to place my styles.css inside there.

Now I'm also going to drag my images so that it's also inside our public folder.  And now I have all of my static files in one place under a particular folder name.  And by using app.use(express.static), providing the path of our static files, then we should be able to refer to these static files by a relative URL, and that is relative to the public folder.

So imagining that we're currently inside the public folder, in order to get to our style sheet, we have to go to the css/styles.css. Now for images, it’s exactly the same, inside the images folder, to lablogo.png.  So let's hit save and let's refresh, and you can see that all of those static files, the CSS and the images, are now able to be rendered all because of this one line of code that specifies a static folder where we have all of those files.

## Challenge

### Program the POST Route

Now that we've managed to serve up our web site using our server, the next challenge for you is to program the post route. And we're going to use Body Parser to grab the data from the sign up form, and we're going to console.log it from our server.  So pause the video and see if you can figure out how to do that. All right.

So, in order to create the post route, we're going to say app.post, and we're going to target, again, the home route, and then it's time for our callback, and inside the callback we're going to try and log some of those things that the user entered into the input. In order to do that, remember we need to use body-parser.  And we've already required it, but we need to tell our app to use it.  So you have to say app.use(bodyParser), and, more specifically, the urlencoded method of bodyParser.  And we're going to set extended to true as usual.

So when you start a new project, it is pretty much inevitable that you will use Express and Body Parser.  So some people find that it's easier to just keep a copy of all of this somewhere, and just paste it in for every single new project.

Now I prefer to write it all out, because on one hand that will give you more practice at coding, and secondly sometimes things change, and if you don't write it out, you're not always aware of what you've put in there, so that can lead to unexpected crashes.  All right.

So now that we've set up Body Parser to be used by our app, the next thing to do is to pull up the values of those things inside our form.

So let's create a variable called firstName, and we're going to set that equal to the request.body.  name of the input.  So for the first input, we're going to give it a name of fName, and for our second input we're going to call it lName, and for our last one, we’re just going to call it email. Now that we've got all of those names set up, we can pull up the values by referring to it inside Body Parser.  So request.body.fName should be equal to our first name, and our last name should be equal to request.body.lName.  And finally the email should be request.body.email.

So let's try logging some of these values: firstName, lastName, and email.  Let's hit save and refresh, and let's enter some values in here.  So the form got submitted, but we didn't trigger any log statements.

What's going on here?  Well, if you take a look inside our signup.html, you can see the form currently doesn't have any actions specified.

So in order to fire a post request to happen, we first have to specify the method as post, and we also have to specify the action, that is the location that we're going to send our post request to, which is going to be the home route.

And this ensures that when we click the Submit button, the information in here gets posted to this location, so that our server can then pick it up in this route that we have preplanned.

So now, if we try again, you can see that we get all of that logged in our console. So our Body Parser code is working, and our sign up form is able to submit the data in the inputs to our home route using a post request.

So now we've done all the prep work of setting up our sign up page and getting the data that's inside the inputs.

Now in the next lesson, we're going to set our web page up with the MailChimp API to start sending this data over to their servers. For all of that and more, I’ll see you on the next lesson.

