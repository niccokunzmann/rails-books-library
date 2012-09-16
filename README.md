# rails-books-library

Small book management tool written to get familiar with rails #BP2012H1

Useful links:
* [Rails Getting Started](http://guides.rubyonrails.org/getting_started.html)
* [Rails Migrations](http://guides.rubyonrails.org/migrations.html)

I think we should use this readme or the wiki to gather our insights.

## Steps so far
**Note 1:** These steps have already been done in the repository.

**Note 2:** If you are surprised by the amount of code: I haven't written a single line of code so far,
everything was created by rails and its generators.

1. `rails new rails-books-library` generated the skeleton of the rails app with all necessary folders
2. *Do this locally*: create your own SQLite database with `rake db:create` (see Getting Started above)
3. `rails generate controller home index` to generate the first controller
4. `rails generate scaffold Book title:string author:string` to generate a model Book with a title and an author
5. *Do this locally*: run `rake db:migrate` to migrate the database
