Feature: Problem 1 
  If we list all the natural numbers below 10
  that are multiples of 3 or 5, we get 3,5,6 and 9. 
  The sum of these multiples is 23.
  
  Find the sum of all the multiples of 3 or 5 below 1000
  
  Scenario: Multiples of 3 or 5 below 10
    Given the ceiling integer is 10
    When we get the multiples of 3 and 5
    Then we should get [3, 5, 6, 9]
    And the sum should be 23
    
  Scenario Outline: Multiples of 3 or 5
    Given the ceiling integer is <ceiling>
    When we get the multiples of 3 and 5
    Then the sum should be <sum>
    
    Examples:
    | ceiling | sum    |
    | 9       | 23     |
    | 999     | 233168 |