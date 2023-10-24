# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(username: 'user1', password: 'password')
User.create(username: 'user2', password: 'password')
User.create(username: 'user3', password: 'password')
User.create(username: 'user4', password: 'password')
User.create(username: 'user5', password: 'password')
Message.create(body: 'message 1', user_id: 1)
Message.create(body: 'message 2', user_id: 2)
Message.create(body: 'message 3', user_id: 3)
Message.create(body: 'message 4', user_id: 4)
Message.create(body: 'message 5', user_id: 5)
