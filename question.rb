class Question
  attr_accessor :answer

  def initialize
    @first = rand(1..20)
    @second = rand(1..20)
    @operator = rand(1..4)
  
    case @operator 
    when 1
      @answer = @first + @second
      @op = '+'
    when 2
      @answer = @first - @second
      @op = '-'
    when 3
      @answer = @first * @second
      @op = '*'
    else
      @answer = @first / @second
      @op = '/'
    end
  end

  def string_question
    "What is #{@first} #{@op} #{@second}?"
  end

  def correct?(input)
    if input == @answer
      return true
    else
      return false
    end
  end
end

