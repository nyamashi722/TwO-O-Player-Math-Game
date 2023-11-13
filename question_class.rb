class Question
  attr_reader :question, :num_1, :num_2

  def initialize
    @num_1 = ""
    @num_2 = ""
    @question = ""
  end

  def generate
    @num_1 = rand(1..20)
    @num_2 = rand(1..20)
    @question = "What is #{@num_1} + #{@num_2}?"
  end

  def validate(answer)
    if (answer == @num_1 + @num_2)
      return true
    end
    return false
  end

end