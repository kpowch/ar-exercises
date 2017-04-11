require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# creates some employees and adds them to a store
@store1.employees.create(
  first_name: "Bob",
  last_name: "Wilson",
  hourly_rate: "600"
  )

@store1.employees.create(
  first_name: "Mary",
  last_name: "Man",
  hourly_rate: "60"
  )

@store1.employees.create(
  first_name: "Sallay",
  last_name: "Simmons",
  hourly_rate: "6000"
  )

@store2.employees.create(
  first_name: "Micky",
  last_name: "Rogh",
  hourly_rate: "6"
  )

@store2.employees.create(
  first_name: "Mack",
  last_name: "Michales",
  hourly_rate: "0.60"
  )

puts Employee.count
