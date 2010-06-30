# require 'env.rb'
require 'sum_of_multiple'

Given /^the ceiling integer is (\d+)$/ do |arg1|
  @solution = SumOfMultiple.new(9)
  @solution.ceiling.should be(9)
end

When /^we get the multiples of (\d+) and (\d+)$/ do |multiple1, multiple2|
  @solution.multiples = [multiple1, multiple2]
  @solution.multiples.should ==([multiple1, multiple2])
end

Then /we should get (\[[\d ,]*\])/ do |numbers|
  @solution.natural_numbers.should ==(eval numbers)
end

Then /^the sum should be (\d+)$/ do |sum|
  @solution.sum.should ==23
end
