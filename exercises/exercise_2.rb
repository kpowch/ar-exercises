require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# assigns store 1 and 2 to variables
@store1 = Store.find(1)
@store2 = Store.find(2)

# changes name of first store
@store1.name = "Steveston"
