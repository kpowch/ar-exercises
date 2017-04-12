# This is a stretch object to play with callbacks

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "\nExercise 8 (Stretch)"
puts "----------"

@store1.employees.create(
  first_name: "Molly",
  last_name: "Simmons",
  hourly_rate: "50"
  )

new_employee = Employee.find_by(first_name: "Molly")
puts new_employee.password
