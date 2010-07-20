require 'spec_helper'
require 'palindromic_number'
describe PalindromicNumber do
  before(:each) do
    @palindromic = PalindromicNumber.new
    @palindromic.max_number = 99
  end
  
  it "should accept a max number" do
    @palindromic.max_number.should ==99
  end

  it "should find the largest palindrome for a given array" do
    @palindromic.largest_palindrome.should ==9009
  end
  
end
