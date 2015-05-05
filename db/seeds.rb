# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do
  user = User.create(username: Faker::Internet.user_name, name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password(8))
  10.times do
    user.tweets << Tweet.create(content: Faker::Lorem.sentence)
  end
end
