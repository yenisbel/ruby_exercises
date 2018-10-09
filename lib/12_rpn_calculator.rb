class RPNCalculator
  attr_accessor :value
  
  def initialize
   	@calculator = []
   	@value = 0
    @operators = {
      :* => "times",
      :+ => "plus",
      :- => "minus",
      :/ => "divide"

    }
  end

  def push(number)
  	@calculator.push(number)	
  end	

  def pop_two
    number1 = @calculator.pop
    number2 = @calculator.pop
    if number1.nil? || number2.nil? 
      raise_error
    else 
      [number1, number2]
    end  
  end

  def plus
    number1, number2 = pop_two
    @value = number1 + number2
    @calculator << @value
  end

  def minus
    number1, number2 = pop_two
    @value = number2 - number1
    @calculator << @value
  end

  def divide
    number1, number2 = pop_two
    @value = number2.to_f / number1.to_f
    @calculator << @value
  end

  def times
    number1, number2 = pop_two
    @value = number1.to_f * number2.to_f
    @calculator << @value
  end

  def raise_error
    raise Exception.new("calculator is empty")
  end

end

 
 