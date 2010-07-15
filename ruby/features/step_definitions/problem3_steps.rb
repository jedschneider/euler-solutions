require 'max_prime_factor'

Given /^I want to find the largest prime factor of (\d+)$/ do |n|
  @solution = MaxPrimeFactor.new
  @solution.max_number = n.to_i
end

Then /^I should get (\d+)$/ do |largest_prime|
  @solution.largest_prime_factor.should ==(eval largest_prime)
end

