require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "\nExercise 4"
puts "----------"

# creates 3 more stores
Store.create({
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
  })

Store.create({
  name: "Whistler",
  annual_revenue: 19000000,
  mens_apparel: true,
  womens_apparel: false
  })

Store.create({
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
  })

# returns array of stores that carry mens apparel
@mens_stores = Store.where(mens_apparel: true)

# outputs store name and annual_revenue
puts "Stores that sell mens apparel"
@mens_stores.each do |store|
  puts "#{store.name}, #{store.annual_revenue}"
end

# returns array of stores that carry womens apparel and has annual_revenue < 1M
@womens_stores = Store.where("womens_apparel = true AND annual_revenue < 1000000")

# outputs store name and annual_revenue
puts "Stores that sell womens apparel"
@womens_stores.each do |store|
  puts "#{store.name}, #{store.annual_revenue}"
end
