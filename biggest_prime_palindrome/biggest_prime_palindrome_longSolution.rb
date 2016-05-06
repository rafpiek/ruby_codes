require 'prime'

def biggest_prime_palindrome(range)
  starting_number = range[0]
  ending_number = range[1]

  ending_number.downto(starting_number) do |number|
    reversed_number = number.to_s.reverse
    if Prime.prime?(number) && reversed_number.to_i == number
      p "#{number}"
      break
    end
  end

end

p 'Insert starting number.'
starting_no = gets.chomp.to_i
p 'Insert ending number.'
ending_no = gets.chomp.to_i

biggest_prime_palindrome([starting_no,ending_no])
