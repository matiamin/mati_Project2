# Feedback

## Project Workflow

**Meets expectations**

Your wireframes and ERD are great! No suggestions there. That said, this app
(like all apps) should have an informative README (I almost marked this as does
not meet expextations because this on is so important). Additionally, your user
stories aren't quite in the standard format of 'role, goal, reason'. For
example:

> Anyone can narrow their search from the homepage or an author's profile page based on the four categories and the search box by country, author and institution

I'd write as a few separate stories:

> As a user, I want to filter my search results by category, so I can find scholarships relevant to me
> As a user, I want to filter my search results by country, so I can find scholarships relevant to me
> As a user, I want to filter my search results by author, so I can find scholarships relevant to me
> As a user, I want to filter my search results by institution, so I can find scholarships relevant to me

That may seem more verbose, but then each user story is independent and more
easily implemented in isolation from the others.

Finally, good work making small, well-described commits on your repo!

## Technical Requirements

**Exceeds Expectations**

I like your use of additional gems to provide additional functionality, such as
authorization, pagination, contact forms, etc. I would suggest that you also
focus on using the fundanmental building blocks to do some of this yourself,
or just to build a more complex app/data model, for things such as favoriting
without using any gems (just to push your understanding of how things work).

I did appreciate how you built filtering over categories by hand.

## Creativity / Interface

**Meet expectations**

Not a lot to say here... most of your styling comes from bootstrap, which is OK,
but I'd like to see a bit more originality, and more importantly, polish to your
interface. Right now it feels a bit messy or sloppy.

## Code Quality

**Does not meet Expectations**

See my inline comments for more detail, but overall, while you're using all the
tools of the ruby and rails correctly, there's a lot of sloppyness in terms of
indentation, but also just cases where you have invalid HTML. The views are the
worst part in this regard. I'd really like to see you focus on writing clean,
readable code for your next project.

## Deployment and Functionality

**Meets/Exceeds expectations**

Your app is a great start towards building a fully-featured version of what you
proposed. I'd love to see a bit more functionality and polish, but overall, this
provides a useful service well.
