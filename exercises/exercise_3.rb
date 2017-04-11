require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "\nExercise 3"
puts "----------"

# deletes 3rd store
@store3 = Store.find(3).destroy

# outputs new number of stores
puts "Number of stores: #{Store.count}"
