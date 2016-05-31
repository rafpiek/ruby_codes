class StringCalculator
  def add(*numbers)
    if numbers.empty?
      return 0
    elsif numbers.size == 1
      return numbers[0].to_i
    elsif numbers.size > 1
      numbers.inject(:+)
    end

  end
end
