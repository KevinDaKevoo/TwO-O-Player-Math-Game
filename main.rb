require_relative 'person'
puts "Welcome to the math game"

puts "Player 1: "
@name = gets.chomp
p1 = Person.new(@name) 
puts "Player 2: "
@name = gets.chomp
p2 = Person.new(@name) 

puts "Okay! Let's Begin!"
puts p1.lives