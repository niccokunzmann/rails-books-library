# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([
  {
    name: 'User1',
    email: 'email2@web.de'
  },
  {
    name: 'User2',
    email: 'email4@web.de'
  }, 
  {
    name: 'User3',
    email: 'email6@web.de'
  },
  {
    name: 'User4',
    email: 'email8@web.de'
  },
  {
    name: 'User5',
    email: 'email10@web.de'
  },
])

books = Book.create([
  {
    title: 'Thriller', 
    author: 'An Author1',
	comments: [
	  Comment.create(body: 'This is really frightening.', commenter: 'Commenter 1'),
	  Comment.create(body: 'I think it is very funny instead.', commenter: 'Commenter 2')
	]
  },
  {
    title: 'Love Story',
    author: 'An Author1'
  },
  {
    title: 'Drama',
    author: 'An Author2'
  },
  {
    title: 'Comedy',
    author: 'An Author3'
  },
  {
    title: 'Zombie Book',
    author: 'An Author3'
  }
])


lendings = Lending.create([
  {
    user: users[1],
    book: books[3]
  },
  {
    user: users[3],
    book: books[2]
  },
  {
    user: users[1],
    book: books[4]
  }

])
