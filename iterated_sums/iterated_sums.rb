# Please compute the sum of squaers for the given numbers: a, a+1,...,b-1,b
# Input: Two numbers: a and b separated by space, where 1<=a<=b<=100
# Output: Computed sum: x*x + (a+1)*(a+1)+...(b-1)*(b-1) + b*b
class IteratedSums
  def self.run
    a,b = get_test_values
    calculate_solution(a,b)
  end

  private
  def self.get_test_values
    input = nil
    while !input || input.empty? || input.length == 1
      input = gets.chomp.split(" ")
      input = nil unless ("1".."100").include?(input[0]) && ("1".."100").include?(input[1])
      input = nil if input[0].to_i >= input[1].to_i
    end
    return input
    # get_test_values
  end

  def self.calculate_solution(a,b)
    a = a.to_i
    b = b.to_i
    result = 0

    until a > b
      result += a*a
      a += 1
    end
    return result
    # calculate_solution
  end

  private_class_method :get_test_values, :calculate_solution
  # class IteratedSums
end

puts IteratedSums.run
