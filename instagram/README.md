
Instagram-challenge
==================

Introduction
-------
The Instagram challenge was the 8th weekend challenge at Makers Academy. The idea was to try and build a copy of Instagram with ruby on rails. I used the devise gem to set up my users and integrated Facebook login via the omniauth-facebook gem. I used the paperclip gem to implement picture uploads. I wanted to implement jquery solutions to decrease load time and enhance the user experience. I implemented ajax solutions for when liking and tagging pictures. I further implemented a filter option so that users could filter pictures by tags.
-------

```
As a user
So that I can save my pictures
I want to sign up to Instagram-clone

As a user
So that I can save my pictures
I want to be able to upload a picture.

As a user
So that show my excitement for a picture
I would like to be able to "like" a picture.

As a user
So that organize my pictures
I would like to be to tag my pictures.

As a user
So that look up pictures
I would like to be able to filter pictures.
```

Installation
-----
* Run the command 'bundle install' in the project directory to ensure you have all the gems.


How to use the applicaton
-----

To run the application start a local rails server and visit http://localhost:3000.

Technologies used
-----
* Ruby on Rails
* Paperclip
* Jquery/Ajax requests
* Devise
* OmniAuth-Facebook
* ActiveRecord associations


Areas to improve
-----
* Improving user profile and enabling editing of profile
* General page layout
* Filtering by multiple tags
* page pagination


Example
-----
