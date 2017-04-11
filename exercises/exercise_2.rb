require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.find(1)
# puts @store1.name
@store2 = Store.find(2)

@store1.name = "Steveston"
# puts @store1.name
