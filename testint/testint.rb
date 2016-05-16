# Given two natural numbers (both not greater than 200)
# each number in the separate line
# Print the sum of them
class TestInt
  def self.aggregate
    message = "Please type two natural numbers (not grater than 200)"
    puts message

    aggregation = 0
    elements = {first_number: 0, second_number: 0}
    elements.map {|key,value| elements[key] = get_input(key.to_s); aggregation += elements[key]}

    puts "The sum is #{aggregation}."
    # aggregate
  end

  private
  def self.get_input(key)
      input = nil
      while !is_correct_input?(input)
        which_number = key[0,key.index("_")]
        puts "#{which_number.capitalize} number."
        input = gets.chomp
        puts "Incorrect input!!" if !is_correct_input?(input)
      end
      return input.to_i
    #get input
  end

  def self.is_correct_input?(input)
    (input.to_s =~ /^\d+$/) != nil
  end

  private_class_method :get_input, :is_correct_input?

  #TestInt
end

TestInt.aggregate
