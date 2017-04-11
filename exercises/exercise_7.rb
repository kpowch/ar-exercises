require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

print "Enter a store name: "
input_store = gets.chomp

new_store_errors = Store.create({
  name: input_store
  }).errors.messages

new_store_errors.each do |error|
  pp error
end
