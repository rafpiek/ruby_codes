require 'prime'

100000.downto(1) do |number|
  if Prime.prime?(number) && number.to_s.reverse.to_i == number
    p "#{number}"
    break
  end
end
