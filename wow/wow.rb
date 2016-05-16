# Given a positive integer 0 < x < 50
# Print one word: Wo...ow (letter o must be repeated x times).
class Wow
  def self.run
    o_count = nil
    while o_count == nil || o_count == 0
      o_count = gets.chomp.to_i
    end

    start_w = "W"
    end_w = "w"
    o = ""
    o_count.times {o << "o"}
    output = "#{start_w}#{o}#{end_w}"
    puts output
    # run
  end
  #class Wow
end

Wow.run
