require 'spec_helper'

describe "A SumOfMultple" do
  
  before(:each) do
    @som = SumOfMultiple.new(9)
    @som.multiples = [3,5]
  end
  
  it "should define the ceiling of the evaluation" do
    @som.ceiling.should be(9)
  end
  
  it "should accept a set of multiples to evaluate" do
    @som.multiples.should ==[3,5]
  end
  
  it "should define the natural numbers for the multiples below the ceiling" do
    @som.natural_numbers.should ==[3,5,6,9]
  end
  
  it "should tell the sum of all multiples" do
    @som.sum.should == 23
  end
  
end