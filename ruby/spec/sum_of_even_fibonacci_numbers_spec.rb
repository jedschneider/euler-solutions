require 'spec_helper'
require 'sum_of_even_fibonacci_numbers'

describe SumOfEvenFibonacciNumbers do
  
  before(:each) do
    @solution = SumOfEvenFibonacciNumbers.new(10)
  end
  
  it "should describe a fibonacci sequence to its declared maximum number" do
    @solution.collection.should ==[1, 2, 3, 5, 8, 13]
  end
  
  it "should take all the even numbers from a sequence" do
    @solution.even_numbers.should ==[2,8]
  end
  
  it "should sum the even numbers of the sequence" do
    @solution.sum ==10
  end
end
