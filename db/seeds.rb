# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

description1 = 'Lorem ipsum dolor sit amet. Aut dicta atque quo iusto veritatis sit vitae quam id maxime suscipit et nostrum beatae est deserunt tenetur sit mollitia itaque. Vel repellendus omnis non deleniti velit eum ipsa quibusdam. In repellendus explicabo et totam dignissimos vel illum voluptatem id iure sint 33 minus omnis aut labore dicta.

Et soluta ullam non tempore ipsam hic distinctio corporis quo dicta atque qui nulla sequi. A corporis voluptatem quo perspiciatis fugiat ut ipsam odio a voluptatem blanditiis et vero autem id enim voluptas?

Aut voluptas sint pariatur nostrum sed minus odio. Et excepturi voluptatem qui doloribus internos At asperiores Quis?'

20.times do
  s = Supplier.new(company: Faker::Commerce.vendor, contact_name: Faker::Name.name , description: description1, year_start:'1990', phone_num:'656-289-1010', address: Faker::Address.street_address, zip_code: Faker::Address.zip)
  s.user = User.first
  s.save
end

20.times do
  s = Maquila.new(name: Faker::Company.name, contact_name: Faker::Name.name, phone_num:'656-289-1010', address: Faker::Address.street_address, zip_code: Faker::Address.zip)
  s.user = User.first
  s.save
end

20.times do
  Category.create(name: Faker::Commerce.department(max: 1))
  5.times do
    s = Supplier.order('RAND()').first
    e = Post.new(name: Faker::Commerce.product_name)
    e.posteable = s
    e.save
  end
end

5.times do
  m = Maquila.order('RAND()').first
  e = Post.new(name: "Looking for: #{Faker::Commerce.product_name}")
  e.posteable = m
  e.save
end

print "#{Category.count} categories made "
print "#{Supplier.count} suppliers made "
print "#{Post.count} posts made"
print "#{Maquila.count} maquilas made"
