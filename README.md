#Pocket Museum

## What is Pocket Museum?
A small demo application I built for saving a gallery of your favorite artworks.  Created so that I could familiarize myself with single page app architecture using Backbone.js and Rails.  


## Demo
[Check it out!](#)

##Set Up (Mac OS X)
1. `brew install postgres`
2. Install [Postgres.app](http://postgresapp.com/)
3. run `bundle install`
4. Create a `config/database.yml` file. In it, paste the contents of [this file](https://gist.githubusercontent.com/erichurst/961978/raw/c3abf4a4b131cb813e1318bfc2516b94d1002019/database.yml.example%20postresql). You can leave the username and password blank.
5. run `rake db:create db:migrate`
6. run `rake db:seed`

The seed data contains a few [Fat Cat Artworks](http://fatcatart.com) to get you started and a user with the following credentials:

```
email:    admin@test.com
password: passw0rd
```
Login as that user to view some fat cats and start collecting your own.

## How It Works
  * Users can manage images and information about artworks into the database
  * Users can edit their profiles
  * Users can favorite artworks
  * Rails supports all server-side controllers
  * Backbone supports all the client-side 

## Resources:
  * [HAML Docs](http://haml.info/)
  * [Backbone Docs](http://backbonejs.org)
  * [Rails Docs](http://guides.rubyonrails.org/)
  * [Codeschool Backbone Tutorials](https://www.codeschool.com/courses/anatomy-of-backbone-js)
  * [Developing Backbone.js Fundamentals e-book](http://addyosmani.github.io/backbone-fundamentals/#application-view)
  * [Adding Backbone and Rails to an Existing App](http://blog.nickcox.me/2014/12/21/adding-backbone-js-to-an-existing-rails-app/) 

## Questions
Pocket Museum is completely open source, intended as a fun way to learn how to build a single page app with Backbone and Rails - if you have any questions or concerns please [let me know](https://github.com/lporte/pocket-museum) by filing an issue.  


Ruby on Rails

This application requires:

- Ruby 2.0.0
- Rails 4.1.0



