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

