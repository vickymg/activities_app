Activities App
--------------

A Ruby on Rails app for gym members & sports activities.

To clone this repo, install dependencies, and set up the database:
```
$ git clone https://github.com/vickymg/activities_app.git
$ cd activities_app
$ bundle
```
To set up the Postgres database:
```
$ bin/rake db:create
$ bin/rake db:migrate
$ bin/rake db:seed

```
To run tests:
```
$ rpsec
```

To run the app:
```
$ bin/rails s
```
Visit the page at: http://localhost:3000
To use the admin section: http://localhost:3000/admin

User Stories (admin):
```
As an admin
So I can keep track of our users
I want to add a new member

As an admin
So I can see all our members
I want to see a list of all members
```

User Stories (member):
```
As a user
So I can show what sports I like
I want a page that lists my activities

As a user
So I can add to my list
I want to be able to add a new activity

As a user
So I can see what sports everyone else likes
I want to see a list of all members and their activities

```
