# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create(name: 'Zeeshan', email: 'zhadier39@gmail.com', password: '123456')
user2 = User.create(name: 'Aime', email: 'aime@gmail.com', password: '123456')

foods = %w[Rice Apple Tomato Onions Cumin Turmeric Chicken Beef]
foods.each { |food| Food.create(name: food, price: rand(1..1000), user_id: rand(1..2)) }

recipes = %w[Biryani Kebab Burger Pizza Spaghetti Shawarma Taco Manchurian]
recipes.each do |recipe|
  Receipe.create(Name: recipe, PreparationTime: rand(1..20), CookingTime: rand(1..10), Public: rand(0..1),
                 user_id: rand(1..2), Description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua')
end
