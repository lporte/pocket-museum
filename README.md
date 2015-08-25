Pocket Museum: A Backbone + Rails Demo
====================================

This is a simple Backbone + Rails application you can use for saving your favorite artworks.

Schema
Demo App

Set Up (Mac OS X)
----------

1. `brew install postgres`
2. Install [Postgres.app](http://postgresapp.com/)
3. run `bundle install`
4. Create a `config/database.yml` file. In it, paste the contents of [this file](https://gist.githubusercontent.com/erichurst/961978/raw/c3abf4a4b131cb813e1318bfc2516b94d1002019/database.yml.example%20postresql). You can leave the username and password blank.
5. run `rake db:create db:migrate`
6. run `rake db:seed`

The seed data contains a user with the following credentials:

```
email:    admin@test.com
password: passw0rd
```
Login as that user to view some artwork.

Did something break?
-----------

Please [let me know](https://github.com/lporte/pocket-museum) by filing an issue.


Ruby on Rails
-------------

This application requires:

- Ruby 2.0.0
- Rails 4.1.0



