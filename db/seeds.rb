# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

Ingredient.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

user_serialized = open(url).read
ingredients = JSON.parse(user_serialized)
drinks = ingredients['drinks']

drinks.each do |drink|
  Ingredient.create!(name: drink["strIngredient1"])
end

Cocktail.create!(name: "Cosmopolitan", picture_url:"https://images.unsplash.com/photo-1560963689-b5682b6440f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=60")
Cocktail.create!(name: "Margarita", picture_url:"https://images.unsplash.com/photo-1590701833281-e6283af0948d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=925&q=80")
Cocktail.create!(name: "Spritz", picture_url:"https://images.unsplash.com/photo-1588685328095-cf9d5c09708f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=60")
Cocktail.create!(name: "Long Island Iced Tea", picture_url:"https://images.unsplash.com/photo-1586734565008-fbdbc166fd6c?ixlib=rb-1.2.1&auto=format&fit=crop&w=789&q=80")
Cocktail.create!(name: "Mojito", picture_url:"https://images.unsplash.com/photo-1551024709-8f23befc6f87?ixlib=rb-1.2.1&auto=format&fit=crop&w=825&q=80")
Cocktail.create!(name: "Bloody Mary", picture_url:"https://images.unsplash.com/photo-1551734322-f43b0798585a?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80")
