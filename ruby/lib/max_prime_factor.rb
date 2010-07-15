class MaxPrimeFactor
  
  attr_accessor :max_number, :primes
  
  def initialize
    @primes = [2,3]
  end
  
  def calculate_primes list_of_numbers
    temp = list_of_numbers
    @primes.each do |prime|
      temp = temp.map{|i| i unless i%prime==0}.compact
    end
    temp
  end
  
  def make_list
    Array.new(last_prime**(2) - starting_point){|i| starting_point+i }
  end

  def ceiling
    Math.sqrt(@max_number).floor
  end
  
  def first_prime
    @primes.first
  end
  
  def last_prime
    @primes.last
  end
  
  def starting_point
    last_prime + 1
  end
  
  def end_point
    last_prime ** 2 # => square the number
  end
  
  def build_possible_prime_factors
    while last_prime < ceiling
      @primes += calculate_primes make_list
    end
  end

  def largest_prime_factor
    build_possible_prime_factors
    @primes.map{|factor| factor if @max_number%factor==0}.compact.last
  end
  
end