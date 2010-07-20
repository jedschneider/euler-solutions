class PalindromicNumber
  attr_accessor :max_number
  
  def largest_palindrome
    palindromes = []
    1.upto(max_number) do |i|
      palindromes += 1.upto(max_number).map do |j| 
        product = j*i
        product if product.to_s == product.to_s.reverse
      end.compact
    end
    palindromes.max
  end
end
