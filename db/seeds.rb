# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#create users
admin2=User.create!(
  user_name:"admin2",
  email:"admin2@example.com",
  password:"qweqwe",
  password_confirmation:"qweqwe",
  role:"admin"
)

user1=User.create!(
  user_name:"person1",
  email:"person1@example.com",
  password:"qweqwe",
  password_confirmation:"qweqwe",
  role:"user"
)

user2=User.create!(
  user_name:"person2",
  email:"person2@example.com",
  password:"qweqwe",
  password_confirmation:"qweqwe",
  role:"user"
)

user3=User.create!(
  user_name:"person3",
  email:"person3@example.com",
  password:"qweqwe",
  password_confirmation:"qweqwe",
  role:"user"
)

user4=User.create!(
  user_name:"person4",
  email:"person4@example.com",
  password:"qweqwe",
  password_confirmation:"qweqwe",
  role:"user"
)

#create blogs
Blog.create!(
  title:"First admin2 blog",
  body:"This are the rules of the website",
  user:admin2
)

Blog.create!(
  title:"First person1 blog",
  body:"first time writing this stuff",
  user:user1
)
Blog.create!(
  title:"second person1 blog",
  body:"second time writing this stuff",
  user:user2
)

Blog.create!(
  title:"third person1 blog",
  body:"third time writing this stuff",
  user:user3
)
Blog.create!(
  title:"fourth person1 blog",
  body:"fourth time writing this stuff",
  user:user4
)