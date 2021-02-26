# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
puts "\nDestroying DataBase"
Antique.destroy_all
Category.destroy_all
User.destroy_all
puts "\nDestroying DataBase finished"

puts "\nStart seeding"

puts "\nCreating user \"test@test.com\""
user = User.new(email: "test@test.com", password: "azerty")
user.save!
puts "\nUser created."

puts "\nCreating Categories"
  ["Achat/Vente", "Archéologie", "Salon Dij'Antik 2017", "Art Africain", "Art Asiatique"].each {|i| Category.new(title: i).save!}
puts "\nCategories created"

puts "How many antiques do you want to seed ?"
nb_of_antiques_to_seed = STDIN.gets.chomp.to_i

puts "\nCreating #{nb_of_antiques_to_seed} antiques..."


nb_of_antiques_to_seed.times do |index|
  photo = URI.open(['https://cdn.shopify.com/s/files/1/1365/2497/products/Rainbow-unicorn-mask_1024x.png', "https://images-eu.ssl-images-amazon.com/images/I/71\%2BncdWcmRL.png", "https://assets.entrepreneur.com/content/3x2/2000/20171025203714-GettyImages-527133383.jpeg"].sample)
  antique = Antique.new(title: Faker::Ancient.titan, description: Faker::Lorem.sentence(word_count: 15, supplemental: true, random_words_to_add: 15))
  antique.category = Category.all.sample
  antique.photo.attach(io: photo, filename: "Masques.png", content_type: 'image/png')
  antique.save!
  puts "Antique n°#{index+1} created."
end


puts "\nAntiques created"

puts "\nSeeding finished!!!"
