puts "Welcome to the math game"


class Person
  attr_accessor(:name, :lives, :correct_answers)
  def initialize(name, lives = 3)
    @name = name
    @lives = lives
    @correct_answers = 0
  end

  def gain
    @correct_answers += 1
  end

  def loss
    @lives -= 1
  end
end

puts "Player 1: "
@name = gets.chomp
p1 = Person.new(@name) 
# puts p1.name
puts "Player 2: "
@name = gets.chomp
p2 = Person.new(@name) 

puts "Okay! Let's Begin!"
puts p1.lives