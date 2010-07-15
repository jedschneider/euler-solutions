require 'spec_helper'
require 'max_prime_factor'

describe MaxPrimeFactor do
  before(:each) do
    @max_prime_factor = MaxPrimeFactor.new
    @max_prime_factor.max_number = 50
  end
  
  it "should assign a variable named primes and set it equal to [2,3]" do
    @max_prime_factor.primes.should ==[2,3]
  end
  
  it "should know the number from which the max prime factor will be calculated" do
    @max_prime_factor.max_number.should ==50
  end
  
  it "should know the ceiling of numbers to checks which is the sqroot of the number in question" do
    @max_prime_factor.ceiling.should == 7
  end
  
  it "should know about its last prime number in the list" do
    @max_prime_factor.last_prime.should ==3
  end
  
  it "should know where the list of numbers should start (the first number after the last prime)" do
    @max_prime_factor.starting_point.should ==4
  end
  
  it "should know where the list of numbers should end (the last prime squared)" do
    @max_prime_factor.end_point.should ==9
  end
  
  it "should accept a list of numbers and return the primes for that list" do
    list = Array.new(5){|i| 4+i}
    @max_prime_factor.calculate_primes(list).should ==[5,7]
  end
  
  it "should generate the next list of numbers when the primes are [2,3]" do
    @max_prime_factor.make_list.should ==Array.new(5){|i| 4+i}
  end
  
  it "should generate the next list of numbers when the primes are [2,3,5,7]" do
    @max_prime_factor.primes = [2,3,5,7]
    @max_prime_factor.make_list.should == Array.new(41){|i| 8+i}
  end
  
  it "should genearte the list of potential prime factors" do
    @max_prime_factor.build_possible_prime_factors
    @max_prime_factor.primes.should ==[2,3,5,7]
  end
  
  it "should generate the list of potential prime factors when the max number is 131195" do
    @max_prime_factor.max_number = 13195
    @max_prime_factor.build_possible_prime_factors
    @max_prime_factor.largest_prime_factor.should ==29
  end
  
  it "should identify the highest prime factor" do
    @max_prime_factor.largest_prime_factor.should ==5
  end
  
  
end
