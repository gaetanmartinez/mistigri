# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
2.times do
  card.create(number: 1)
end

2.times do
  card.create(number: 2)
end

2.times do
  card.create(number: 3)
end

2.times do
  card.create(number: 4)
end

2.times do
  card.create(number: 5)
end

2.times do
  card.create(number: 6)
end

2.times do
  card.create(number: 7)
end

2.times do
  card.create(number: 8)
end

2.times do
  card.create(number: 9)
end

2.times do
  card.create(number: 10)
end

Card.create(number: 0) #mistigri
