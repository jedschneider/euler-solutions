require 'sum_of_even_fibonacci_numbers'

Given /^a fibonacci sequence with a max number of (\d+)$/ do |max_num|
  @solution = SumOfEvenFibonacciNumbers.new(max_num.to_i)
end

Then /^the sum of the even numbers should be (\d+)$/ do |sum|
  @solution.sum.should ==sum.to_i
end
