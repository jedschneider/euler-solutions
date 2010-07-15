Feature: Problem 3
  Given a number find its largest prime factor
  As an example: 
  The prime factors of 13195 are 5, 7, 13 and 29.
    
  Scenario Outline: Other examples
  Given I want to find the largest prime factor of <max number>
  Then I should get <largest factor>
  
    Examples:
    | max number   | largest factor |
    | 100          | 5              |
    | 1000         | 5              |
    | 13195        | 29             |
    | 600851475143 | 6857           |