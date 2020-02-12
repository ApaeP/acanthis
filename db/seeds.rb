# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Start seeding\n"

puts "Creating user...\n"
user = User.new(email: "acanthisdev@gmail.com", password: "azerty")
user.save!
puts "\nUser created."

puts "\nCreating Categories"
  ["Achat/Vente", "Archéologie", "Salon Dij'Antik 2017", "Art Africain", "Art Asiatique"].each {|i| Category.new(name: i).save}
puts "\nCategories created"

puts "\nCreating antiques..."

nb_de_tours = 10
tour = 1

nb_de_tours.times do
  puts "\nTour n°#{tour} sur #{nb_de_tours}\n"
  tour += 1
  antique1 = Antique.new(title: "Masques", description: "Paire de masques anciens. Bronze. XIXème.")
  antique1.category = Category.find_by_name(["Achat/Vente", "Archéologie", "Salon Dij'Antik 2017", "Art Africain", "Art Asiatique"].sample)
  photo1 = URI.open('https://res.cloudinary.com/acanthisdev/image/upload/v1579363649/objet-1_daz9y7.png')
  antique1.photo.attach(io: photo1, filename: "Masques.png", content_type: 'image/png')
  antique1.save!
  puts "Antique 1 created"

  antique2 = Antique.new(title: "Statuette en bois", description: "Petite statuette avec pénis apparent. Bois. XIXème.")
  antique2.category = Category.find_by_name(["Achat/Vente", "Archéologie", "Salon Dij'Antik 2017", "Art Africain", "Art Asiatique"].sample)
  photo2 = URI.open('https://res.cloudinary.com/acanthisdev/image/upload/v1579363655/objet-2_pygur5.png')
  antique2.photo.attach(io: photo2, filename: "Statuette.png", content_type: 'image/png')
  antique2.save!
  puts "Antique 2 created"

  antique3 = Antique.new(title: "Cruche", description: "Cruche un peu pétée. Bronze. IIème.")
  antique3.category = Category.find_by_name(["Achat/Vente", "Archéologie", "Salon Dij'Antik 2017", "Art Africain", "Art Asiatique"].sample)
  photo3 = URI.open('https://res.cloudinary.com/acanthisdev/image/upload/v1579363649/objet-3_wzkevk.png')
  antique3.photo.attach(io: photo3, filename: "Cruche.png", content_type: 'image/png')
  antique3.save!
  puts "Antique 3 created"

  antique4 = Antique.new(title: "Potiche", description: "Potiche asiatique. Bronze. Vème.")
  antique4.category = Category.find_by_name(["Achat/Vente", "Archéologie", "Salon Dij'Antik 2017", "Art Africain", "Art Asiatique"].sample)
  photo4 = URI.open('https://res.cloudinary.com/acanthisdev/image/upload/v1579363650/objet-4_jl9udh.png')
  antique4.photo.attach(io: photo4, filename: "Potiche.png", content_type: 'image/png')
  antique4.save!
  puts "Antique 4 created"

  antique5 = Antique.new(title: "Poignée", description: "Poignée de cruche. Bronze. IIIème.")
  antique5.category = Category.find_by_name(["Achat/Vente", "Archéologie", "Salon Dij'Antik 2017", "Art Africain", "Art Asiatique"].sample)
  photo5 = URI.open('https://res.cloudinary.com/acanthisdev/image/upload/v1579363653/objet-5_km7uv1.png')
  antique5.photo.attach(io: photo5, filename: "Masques.png", content_type: 'image/png')
  antique5.save!
  puts "Antique 5 created"

  antique6 = Antique.new(title: "Bibelot", description: "Bibelot super stylé. Bois. XVIIIème.")
  antique6.category = Category.find_by_name(["Achat/Vente", "Archéologie", "Salon Dij'Antik 2017", "Art Africain", "Art Asiatique"].sample)
  photo6 = URI.open('https://res.cloudinary.com/acanthisdev/image/upload/v1579363651/objet-6_jxrmi9.png')
  antique6.photo.attach(io: photo6, filename: "Bibelot.png", content_type: 'image/png')
  antique6.save!
  puts "Antique 6 created"

  antique7 = Antique.new(title: "Buste", description: "Buste africain. Cuir. XVIIIème.")
  antique7.category = Category.find_by_name(["Achat/Vente", "Archéologie", "Salon Dij'Antik 2017", "Art Africain", "Art Asiatique"].sample)
  photo7 = URI.open('https://res.cloudinary.com/acanthisdev/image/upload/v1579363654/objet-7_kwozpq.png')
  antique7.photo.attach(io: photo7, filename: "Buste.png", content_type: 'image/png')
  antique7.save!
  puts "Antique 7 created"

  antique8 = Antique.new(title: "Hache de cérémonie", description: "Hache extrêmement stylée qui a déjà coupé des têtes. Bronze/ XIVème.")
  antique8.category = Category.find_by_name(["Achat/Vente", "Archéologie", "Salon Dij'Antik 2017", "Art Africain", "Art Asiatique"].sample)
  photo8 = URI.open('https://res.cloudinary.com/acanthisdev/image/upload/v1579363655/objet-8_nxgq7x.png')
  antique8.photo.attach(io: photo8, filename: "Hache.png", content_type: 'image/png')
  antique8.save!
  puts "Antique 8 created"
end

puts "\nAntiques created"

puts "\nSeeding finished!!!"
