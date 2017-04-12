# This is a stretch object to play with callbacks

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'
require_relative './exercise_8'

puts "\nExercise 9 (Stretch)"
puts "----------"

# Make sure empty stores can be destroyed
@empty_store = Store.create!(name: 'Test Empty Store', annual_revenue: 0)
if @empty_store.destroy
  puts "Empty Store destroyed! This is good"
else
  puts "Whoa! Empty store should be destroyable... Not cool!"
end

# Make sure non-empty stores cannot be destroyed
@store1.destroy
puts "There are now #{Store.count} stores left"

@store2.destroy
puts "There are now #{Store.count} stores left"
