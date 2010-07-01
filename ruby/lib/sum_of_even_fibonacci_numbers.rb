class SumOfEvenFibonacciNumbers
  attr_accessor :collection
  
  def initialize(max_num)
    @collection = fibs(max_num)
  end
  
  def even_numbers
    @collection.map{|number| number if number.even?}.compact
  end
  
  def fibs(max_num)
    a,b = 1,2
    sequence = [a, b]
    while b <= max_num
      a,b = b, a+b
      sequence.push(b) 
    end
    sequence
  end
  
  def sum
    even_numbers.reduce(:+)
  end
end