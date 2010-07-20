require 'palindromic_number'

Given /^a max number of (\d+)$/ do |max|
  @palindromic = PalindromicNumber.new
  @palindromic.max_number = max.to_i
end

Then /^the largest palindromic number of its products is (\d+)$/ do |product|
  @palindromic.largest_palindrome.should ==(eval product)
end
