# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: 'scrooge@intranet.com', first_name: 'Scrooge', last_name: 'McDuck', password: 'qwertyuiop', password_confirmation: 'qwertyuiop', admin: true)
User.create(email: 'user@intranet.com', first_name: 'Test', last_name: 'User', password: 'qwertyuiop', password_confirmation: 'qwertyuiop')
User.create(email: 'tommy.sf.karlsson@gmail.com', first_name: 'Tommy', last_name: 'Karlsson', password: 'qwertyuiop', password_confirmation: 'qwertyuiop')