# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "🗑 Deleting old recipes..."
Recipe.destroy_all

puts "🍝 Seeding recipes..."
10.times do
  recipe = Recipe.create!(
    name: Faker::Food.dish,
    image_url: "https://hips.hearstapps.com/esq.h-cdn.co/assets/15/06/nrm_1423255129-pasta.jpg?resize=480:*",
    description: Faker::Food.description,
    author: Faker::Artist.name
  )

  5.times do
    Ingredient.create!(
      name: Faker::Food.ingredient,
      measurement: Faker::Food.measurement,
      recipe: recipe
    )
  end
end

puts "🎉 Done!"