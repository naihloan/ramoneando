# 249 Posting Data to Mailchimp's Servers via their API

All right guys.  Now in the last lesson we've set up our requests and responses to the get requests and the post requests on our home route.  And by doing this we're able to load up our sign up page with bootstrap enabled and we're able to send this data over to our servers using body parser.

So now it's time to start incorporating our API.

So if we google for MailChimp API then we get taken to developer dot MailChimp dot com.  And this is the documentation for MailChimp latest API version 3.0.  So we're going to go ahead and click get started with the MailChimp API.

## Authentication

Now as they say here in order to use the API we need to get a API key to authenticate ourselves with their servers because after all you don't want some random person to start adding subscribers to your mailing list right.  And you definitely don't want somebody to just delete your entire mailing list by making post requests that are not authorized.

So let's go ahead and setup our API key.

If you don't have a mailchimp account then this is a good time to set one up to sign up for a mailchimp account.  Just head over to MailChimp dot com and then click on sign up for free.  And here you can create a new account with MailChimp and it's completely free and it doesn't require any credit card details.  The process is pretty self-explanatory but you want to choose the free plan and tell them that you don't have an existing list of email subscribers.  And finally you can click on Not right now for finding the marketing path.

Now once you're done go ahead and log in and then we're going to get your API key so to do this click on your account name go to accounts extras and click on API keys.

Now once you're here you can scroll down and click on create an API key and that will generate a new API key for you.  So you want to go ahead and select your API key from here and then paste it at the very bottom of your app.  And we're going to combat it out for now or come back to it a little bit later on.

## Instruction Manual

### Add Subscribers To Our List

So now that we've gone our API key then already to interact with MailChimp servers through their API.  If you head back to MailChimp dot com slash developer and then scroll down to click on their API reference then we can use this as our instruction manual to figure out how to add subscribers to our list.

The first thing to do is to head over to the list section and there's a number of things that you can do here.  You can create you can read.  You can edit and you can delete.

Now we're interested in the creation parts because we want to subscribe some list members.  So I'm going to click on here and I end up at this post drought which allows me to batch subscribe or unsubscribe list members.  Now the process is exactly the same.  If you want to batch subscribe.  Lots of people or simply subscribe a single person all you need is a list I.D. and you can provide the members that you want to subscribe in the body of your request.  So how do we do all of that.

Well first things first let's get our list I.D..

If you go back to MailChimp dot com and presuming that you already logged in you can simply go to audience and manage audience settings and scroll down to get your unique I.D..  This is your audience I.D. or also known as list I.D. and that is going to help MailChimp identify the list that you want to put your subscribers into.  So let's go ahead and copy that and paste it at the bottom of our app G.S. and we're going to comment it out as well.

Now that we've got our API key and our list I.D. then we're ready to move on to the next step which is to start sending our request to MailChimp.

Let's go back to MailChimp dot com slash developer and click on get started to see how we can start interacting with the MailChimp API.  If you scroll down on this page you can see that they've got a section on code examples which is usually a nice way of understanding how to work with a particular API.

So here they've got a curl request which is actually something that's done in the terminal but in our case we're going to implement this using our code.

So take a look at this data section.  This is the sort of data that they would expect us to send to their server.  So if I just copy this and paste it into our code then you can see that this is essentially a flat pack Json right.  So it's all full of strings and it's delineated by these curly braces and colons.

So what we would have to do is to create our data that we want to post as a Jason.  So first let's create the javascript object so let's create a new variable called data and I'm going to set that as a new javascript object.

Now inside our data object we have to provide all our key value pairs with keys that MailChimp is going to recognize.

So if we go back to the API reference and go to our list slash audiences you can see that our data is going to be sent via the body parameters using a key code members.

Now this members happens to be an array of objects each representing a member that we want to subscribe.  So we can add up to 500 in our array to subscribe at the same time.  But if we click on Show properties you can see that each of these members can have their own properties like the email address for the subscriber the status and the merge fields.

These are the merge fields that will contain their first names or last names.

Let's create are members key value pair first.  So our data is going to be called members and this members remember has to be an array of objects.  So we're going to open up another set of objects and we're only going to have a single object in our array because we're only going to subscribe one person at a time.

Now the email key is called email address.  And just to prevent myself making a typo I'm just going to copy and paste it in here and the value of this key is going to be the email that we got from the body of the post request.  So let's put the e-mail here and then the next one is going to be these status.

So let's again copy and paste it and you can see it can have four possible values subscribed unsubscribe cleaned or pending and we're going to go for subscribed.  So status is equal to the strings subscribed.  And then the next one is going to be the merge fields and the merge fields.  Notice how this is now an object.  So we have to put in our merge fields and then open up a set of curly braces and you can set the names of these merge fields by going to your audience and then going to settings and going to audience fields and merge tags.

So if you take a look down this list most contacts come by default with a first name last name birthday and the word that's inside this field is the merge field and by default MailChimp sets it to f name an L name in all caps.  You can either change that or as I would recommend keeping it the same.  So let's use f name as the first key which is going to hold the first name from the form and then l name which is going to hold the last name from the form.

Now we have our data object completed but this is javascript and what we need is actually to turn this into a flat pack Json.  So I'm going to create a new variable called Jason data and I'm going to set this to Json dot string if I and I'm going to pass in my data into here so that I turn this data into a string that is in the format of a Json now because I'm actually never going to change any of these variables. 

I can actually change them all to constants so now we have our Json data.

This is what we're going to send to MailChimp and we're ready for the next step which is to make our request.  Now remember previously we used the ATP s module and all that we did was say 80 G.P.S. dot gets and then inside here we put in a your cell and then a callback function.  Right.  But that as you can guess only makes get requests when we want data from an external resource.  But in our case we actually want to post data to the external resource.

So if we go back to the documentation of the H2 CPS module you can see that in addition to a CPS dot get there's also one called Dot request.  And in this case in addition to adding a U.R.L. to make our request to we can also specify some options.  Now it tells us that these options Accept all options from the ATP dot request module.  So let's click on it and see what options we can have.  So in our options there's something called Method and this allows us to specify the type of request we want to make.

For example get or in our case it'll be post heading back to our code let's go ahead and create a constant for the HP G.P.S. module and require it.  Now down here just below where we've got our Jason data but still within the app dot post we're going to create our request.

So we're gonna say 80 G.P.S. dot request and we're going to pass in firstly are you RL And then we're going to pass in our options.  And finally we're going to have a callback which is going to give us a response from the MailChimp server.  So let's fill in each of these fields.

Now your role is going to come from the main MailChimp endpoint.  We can find out which you are allowed to use by going to the MailChimp API documentation.

## Section

### Code Examples

So in the section code example it shows us that this is the U.R.L. that they're using.  And in fact all the way up to here is the MailChimp API end point and then afterwards we have optional paths that we can tag on and if we wanted to subscribe some members then we would be posting to forward slash lists forward slash the list I.D. that we want to target.  So I'm going to copy this entire your URL and I'm going to paste it into my you are all here.

Now in addition I have to add a list I.D. because in MailChimp you could have multiple lists and you have to tell it which list you want to subscribe members into.  Now remember previously I'd already saved the list I.D. of my main audience and I've really got it down here.  I'm just going to copy that and tag that to the end of the U.R.L..

So there's just one last thing before we're done with the U.R.L..

Notice how here it says U.S. and then it's got an X.

You have to replace that X with the number that you have in your API key after the word U.S. MailChimp has several servers that they're running simultaneously because they're a big operation.  And when you sign up you get randomly assigned to one of them.  And it could be anywhere from us one to us 20.  Take a look at your API key and see what number you've got after the word us and then copy that number and replace the X with that number.  So now we finally completed.  Are you RL The next step is to create some options.

## Javascript Object

### Options

So I'm going to call it options and it's going to be a javascript object now the most important option I have to specify is the method.  So let's specify a method and let's set it to post.

Now the next thing I have to do if I want this POST request to go through successfully is to provide some form of authentication.  We've already got hold of our API Key earlier on from MailChimp but now we need to think about how we're going to use it.  If we go back to get started and take a look at authentication methods it tells us that we can use the basic HP authentication and enter any string as a user name and our API key as the password.  For example it might look something like this.  Any string coal on your API key.

## Authentication

Now in the options for our ATP request function there is something called auth which allows us to do this form of basic authentication.  So that's what we're going to add next.  In addition to the method key in our options we're going to add auth colon and then we're going to specify a string.

Now MailChimp said that we could use any string as the user name and then separate the user name from the password which is going to be the API key with the colon.  So it should look something like this.

It doesn't matter what you write here as long as you have something and then you have a colon and then you paste in your API key making sure that your region in the API key matches with the region in your U.R.L..

So now we're finally ready to make our HB request and when we get back a response we're going to check what data they sent us.  So we're going to see a response start on just like how we did before.  We're going to specify that we're looking out for any data that we get sent back from the MailChimp server and then we're just going to log our data but we're going to use the Json parse to parse it first. 

So now some of you might be wondering OK.  So we made our request but no where in this request or in our U.R.L. or in our options have we specified what it is that we want to send to MailChimp namely our Jason data which comes from here and it includes the email address and the first and last name of our subscriber.  So that's a very good point.

In order to send that data if we take a look back at the documentation for the request method we have to save our request in a constant.  And then later on we can use that constant request to send things over to the MailChimp server by calling request.

All right let's go ahead and create a new constant code request because we don't want to conflict with our req here and then we're going to use this request and we're going to call request dot write.  And inside all right we're going to pass the Jason data to the MailChimp server and then to specify that we're done with the request we call request dot end. And now let's test it out.  So let's hit save on our update J.S. and let's just check hyper to make sure that we don't have any errors.

And now let's go to our local host three thousand and try to sign up.  So I'm going to put in my own name and then I'm just gonna use a random email let's call it.  I don't know.  4 five six eight email dot com and click sign me up.  Now at this point if we look inside our terminal you'll see what we get sent back as the data from MailChimp.  And it seems to suggest that a new member has been added and there were no errors in this process.

So now if we go to our MailChimp account and go to our audience you should be at to see that you should have a new contact.  And if you click on that number one or two that you might see there you should see the e-mail that we just inputted the first name and the last name and it's all now been added to our audience.

And if you want to add another member you can go to the U RL bar hit enter again to restart it and add a new person.  Now when I click sign me up and go back to our audience and hit refresh you should see we now have two entries and you can keep adding this but our website still has a number of small faults.  Right.

Like when we click sign me up it kind of just hangs it doesn't do anything doesn't give any feedback to the user whether it was successful or whether if it failed. 

So in the next lesson.  That's exactly what we're gonna be doing.  We're going to be sending the user to a success page if everything went well.  And we're going to be sending them to a problem page if it went badly.  So have a play around with your existing web page.  And once you already head over to the next lesson.

