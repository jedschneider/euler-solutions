Feature: Problem 4 
  Palindromic Numbers
  A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.

  Find the largest palindrome made from the product of two 3-digit numbers.
  
  Scenario Outline: Palindromic Numbers
    Given a max number of <max_number>
    Then the largest palindromic number of its products is <largest_product>
    
    Examples:
    
      | max_number | largest_product |
      | 99         | 9009            |
      | 999        | 906609          |