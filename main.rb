require_relative 'person'
require_relative 'question'


@repl_bool = true
@turn = 0

puts "Welcome to the math game!!!"

puts "Player 1: "
@name = gets.chomp
p1 = Person.new(@name) 
puts "Player 2: "
@name = gets.chomp
p2 = Person.new(@name) 

puts "Okay! Let's Begin!"

while @repl_bool = true
  question = Question.new

  case @turn
  when 0
    puts "Your turn #{p1.name}"
  else
    puts "Your turn #{p2.name}"
  end

puts question.string_question
@answer = gets.chomp.to_i

if @turn == 0 && question.correct?(@answer)
  puts "CORRECT!"
  p1.gain
  @turn += 1
elsif @turn == 0 && !question.correct?(@answer)
  puts "WRONG!"
  p1.loss
  @turn += 1
elsif @turn == 1 && question.correct?(@answer)
  puts "CORRECT!"
  p2.gain
  @turn -= 1
elsif @turn == 1 && !question.correct?(@answer)
  puts "WRONG!"
  p2.loss
  @turn -= 1
end

puts "The score so far:
#{p1.name}: #{p1.correct_answers} CORRECT ANSWERS #{p1.lives} REMAINING LIVES 
#{p2.name}: #{p2.correct_answers} CORRECT ANSWERS #{p2.lives} REMAINING LIVES"
end