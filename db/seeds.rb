CATEGORIES = ["Achat/Vente", "Archéologie"]#, "Salon Dij'Antik 2017", "Art Africain", "Art Asiatique"]

puts "\nErasing DataBase"
puts "\n -- Destroying antiques"
Image.destroy_all
Antique.destroy_all
puts "\n -- Destroying categories"
Category.destroy_all
puts "\n -- Destroying users"
User.destroy_all
puts "\nDB Erased"

puts "\nSeeding"

puts "\n-- Creating user \"test@test.com\""
user = User.new(email: "test@test.com", password: "azerty")
user.save!
puts "-- User created."

puts "\n-- Creating Categories"
  CATEGORIES.each { |e| Category.create!(title: e) }
puts "-- Categories created"

# puts "How many antiques do you want to seed ?"
# nb_of_antiques_to_seed = STDIN.gets.chomp.to_i

# puts "\n-- Creating #{nb_of_antiques_to_seed} antiques..."

photo_links = ['https://images-na.ssl-images-amazon.com/images/I/81Tl7qyesGL._AC_SL1500_.jpg',
               'https://partycity6.scene7.com/is/image/PartyCity/_pdp_sq_?$_1000x1000_$&$product=PartyCity/662678',
               'https://www.gmcrafts.co.uk/wp-content/uploads/2018/11/Cute-Unicorn-Main-Product-Image.jpg',
               'https://images.photowall.com/products/57496/unicorn-2.jpg?h=699&q=85',
               'https://www.politics.co.uk/wp-content/uploads/2020/08/cnphoto_0_0_0_0_14127456_1200.jpg',
               'https://static.posters.cz/image/1300/posters-muraux/sweet-unicorn-pink-520x318-cm-premium-non-woven-130gsm-i78815.jpg',
               'https://cdn.shopify.com/s/files/1/1365/2497/products/Rainbow-unicorn-mask_1024x.png',
               "https://images-eu.ssl-images-amazon.com/images/I/71\%2BncdWcmRL.png",
               "https://assets.entrepreneur.com/content/3x2/2000/20171025203714-GettyImages-527133383.jpeg"]

# nb_of_antiques_to_seed.times do |index|
#   photo = URI.open(photo_links.sample)
#   antique = Antique.new(title: Faker::Ancient.titan, description: Faker::Lorem.sentence(word_count: 15, supplemental: true, random_words_to_add: 15))
#   antique.category = Category.all.sample
#   antique.photo.attach(io: photo, filename: "Masques.png", content_type: 'image/png')
#   antique.save!
#   puts "  -- Antique n°#{index+1} created."
# end

15.times do |index|
  antique = Antique.new(title: Faker::Ancient.titan, description: Faker::Lorem.sentence(word_count: 15, supplemental: true, random_words_to_add: 15))
  antique.category = Category.all.sample
  antique.save!
  rand(2..3).times do
    antique.images.create!(image: URI.open(photo_links.sample))
  end
  puts "  -- Antique n°#{index+1} created."
end


# product.product_images.create!(image: File.open(File.join(Rails.root, 'test.jpg')))

puts "-- Antiques created"

puts "\nSeed planted"
