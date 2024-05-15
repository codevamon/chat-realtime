# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Client.create(username: "kartik", password: "kartic@123")
Client.create(username: "mahesh", password: "mahesh@123")
Client.create(username: "mangesh", password: "mangesh@123")
Client.create(username: "suyash", password: "suyash@123")
Client.create(username: "nilesh", password: "nilesh@123")
