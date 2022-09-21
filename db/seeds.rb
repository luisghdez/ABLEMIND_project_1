# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

50.times do
  s = Supplier.new(company: Faker::Company.name)
  s.user = User.first
  s.save
end

20.times do
  Category.create(name: Faker::Commerce.department(max: 1))
  5.times do
    s = Supplier.order('RAND()').first
    e = Product.new(name: Faker::Commerce.product_name)
    e.supplier = s
    e.category = Category.last
    e.save
  end
end

print "#{Category.count} categories made "
print "#{Supplier.count} suppliers made "
print "#{Product.count} products made"
