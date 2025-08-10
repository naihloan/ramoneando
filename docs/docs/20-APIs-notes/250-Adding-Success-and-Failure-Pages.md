# 250 Adding Success and Failure Pages

In the last lesson we mentioned that it's not very good user experience to let your Web site simply hang in timeout once the user has submitted their details.

They're not going to have much confidence in this newsletter if we don't give them some feedback.  Right.  So let's go ahead and do that.  This is gonna be a challenge for you.

How can we figure out what response code we got back after making this HP request.  And if that code was two hundred then it probably means that things went OK and we're going to send the user a piece of tags to be displayed in the website.

Now if the code wasn't two hundred and we got a different code then we're going to send them a different message.  Something about the process failed and they should try again later.  So pause the video and see if you can complete this challenge.  All right.

So we know that we can get hold of the response object that we get back from making the request and we can tap into the status code to see whether if it was 200 or whether if it was something else what if we check whether if the status code was equal to 200 and if so then we go ahead and use red dot send to send a piece of tax to be displayed in the Web site.

Now you could of course send a paragraph or in each one element but I'm just going to send a very simple text.  I'm going to say success fully subscribed and if the code was not 200 then I'm going to residents and there was an error with signing up.  Please try again. 

So now let's go ahead and test it out.

When I click sign me up I get successfully subscribed.  And this is written in the website.  But let's say that the API Key was wrong or if the list I.D. was wrong.  Well then in this case when I tried to sign up then I get there was an error with signing up.  Please try again this works.

But it's a bit plain right.

## Custom Message

### Bootstrap

Nobody wants to call on a website that looks nice initially and then after a bit of interaction it ends up looking really really plain.  What if we wanted to use bootstrap to jazz it up a bit.  Well we can because previously we created the beginnings of the success thought HMO and the failure dot HMO. 

In addition to all sign up dot each team out here we can include some bootstrap code that will quickly give us a nice looking page that looks a lot better than what we had before.  And we can also include button and allow the user to interact with it.

### Jumbotron Boilerplate

So I'm gonna head over to the bootstrap Web site and I'm gonna head over to components and I'm gonna add a jumbotron to our Web site something that looks a bit like this.

So let's go ahead and copy all of this code and we're going to add our HMO boilerplate.  This one is going to have a title of failure.  Sounds a bit sad but let's paste our code for our jumbotron and the each one is going to say oh ohoh. 

And we're also going to have a jumbotron in our success not HMO.  And this one is going to say "Awesome", now in order to use bootstrap of course we need bootstrap style sheet.  So let's go ahead and copy that over to our success and our failure.  Web sites

## Challenge

Now it's back to you for a challenge instead of using resort sand to send these messages can you figure out how we can send these.  Success and failure.  Web pages over instead.  Pause the video and try to complete the challenge.

All right so that's gonna be as simple as changing resident send to read that send file and then we add our directory and then we tag on our file name which is going to be forward slash success dot HMO the name of this file and then this line is going to be read that send file failure dot HMO.  So now let's check it out try some random stuff and let's hit.

Sign me up and awesome.

You've been successfully signed up to the newsletter look forward lots of awesome content so that's pretty cool and let's test out are failure site there's one other problem that I'd like to address. 

## Add Try Again Button And Step After Failure Message

It would be nice if they failed on signing up to be able to try again.  And if they had a big button here that said try again.  That takes them back to the original page over here.  That would be pretty nice right.  We can do this by using our page over here.
tn can simply add a form that includes a submit button and this button will say try again and it will have the action of posting to a new route which is the failure route.  Now our form is not going to have a class but our button is going to get some bootstrap classes namely Btn Btn large Btn warning to turn it yellow

so now let's try again to go to our failure page and now you can see we have a try again button but at the moment it doesn't work because we don't yet have a route defined for the failure route.  That's making a post request.  So let's do that here below our post request for the home route.

I'm going to add another one for our failure round and this one is going to have a completion handler that redirects the user to the home run so I can simply say rest don't redirect and the path I want to redirect it to is simply the home route.

So now when we end up on that failure route then when we click this button it will take us right back to the sign up page.  So that means when I click this button that says try again we're going to trigger a post request to the failure route and that is gonna be caught by our server over here and it's going to redirect to the home route which triggers this app dot get and it sends the sign up page as the file to be rendered on screen.

So that's pretty much all the functionality that we need for our very simple newsletter sign up page.  Now there's a whole world of customization that you can add to this.  And of course you can make it even more complex with better pages better rendering and customizing these pages.

But what's more important than that is how do we get our server to not just be hosted locally because at the moment this website only works when we're running our servers locally on our computer.

How can I put this onto the worldwide web so that we can send our friends and family and clans and customers a U.R.L. so that they can go ahead and use this Web site and sign up to our MailChimp list as well.

Well that is what we're going to tackle in the next lesson where we make our website go live so that it's a real web app available on the worldwide web for all of that.  And we'll ask you on the next lesson.