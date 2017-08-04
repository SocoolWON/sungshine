# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  #User.create! nickname: "test", email: "test@test.com", password: "test12", password_confirmation: "test12"
  #Admin.create! nickname: "SuperAdmin", email: "admin@admin.com", password: "admin12", password_confirmation: "admin12"
  100.times { 
    p = Product.new( title: Faker::Lorem.word, 
                     category: Faker::Pokemon.name, 
                     description: Faker::Lorem.paragraph, 
                     feature: "A", 
                     price: Faker::Number.number(5), 
                     admin_id: 1 )

    p.image_url = File.open('/Users/SoCool/Downloads/sextoy.png')
    p.save!
  }
 
  #Product.create! title: Faker::Lorem.word, category: Faker::Pokemon.name, description: Faker::Lorem.paragraph, feature: "A", price: Faker::Number.number(5), admin_id: 1, image_url: 
  #Order.create! address: Faker::Address.city + ", " + Faker::Address.street_name + ", " + Faker::Address.street_address, zip_code: Faker::Address.zip, receiver: User.find_by(id: 1).nickname, phone_number: 01011112222, requirements: Faker::Lorem.sentences, user_id: 1
  #Lineitem.create! user_id: 1, product_id: 1   


