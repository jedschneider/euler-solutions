class SumOfMultiple
  attr_accessor :ceiling, :multiples
  
  def initialize n
    @ceiling = n
  end
  
  def natural_numbers
    Range.new(1, ceiling).map do |number|
      if number%3==0 or number%5==0
        number
      end
    end.compact # => gets rid of nils in map
  end
  
  def sum
    natural_numbers.reduce(:+)
  end
  
end