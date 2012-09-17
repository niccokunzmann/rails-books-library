# rails-books-library

Small book management tool written to get familiar with rails #BP2012H1

Useful links:
* [Rails Getting Started](http://guides.rubyonrails.org/getting_started.html): I am following this guide so far.
* [Rails Migrations](http://guides.rubyonrails.org/migrations.html)

I think we should use this readme or the wiki to gather our insights.

## Steps so far
**Note 1:** These steps have already been done in the repository.

**Note 2:** If you are surprised by the amount of code: I haven't written a single line of code so far,
everything was created by rails and its generators.

1. `rails new rails-books-library` generated the skeleton of the rails app with all necessary folders
1. *Do this locally*: create your own SQLite database with `rake db:create` (see Getting Started above)
1. `rails generate controller home index` to generate the first controller
1. `rails generate scaffold Book title:string author:string` to generate a model Book with a title and an author
1. `rails generate model Comment commenter:string body:text post:references` and then followed the steps in step 7
1. *Do this locally*: run `rake db:migrate` to migrate the database

## What to do

###Summary of the tasks the app is supposed to support:
* enter books
* lend them to students

###Requirements
* using a relation database for persistence
* run on heroku.com

###Questions
* How is persistence achieved in rails?
* Migrations-DSL von Rails?
* Which assumptions does the framework make?
* Which assumptions does heroku make?

