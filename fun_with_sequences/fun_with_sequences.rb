# You are given a sorted sequenc of n integers s = s1, s2, ..., sn
# and a sorted sequence of m integers Q = q1, q2, ..., qm.
# Print in the ascending order all such si that does not belong to Q.
  # INPUT :
  # - one integer 2<=n<=100, and in the following line n integers:
    # -100 <= si <= 100, si <= si+1.
  # - one integer 2<=m<=100, and in the following line m integers:
    # - -100 <= qi <= 100, qi <= qi+1.
# OUTPUT - The sequence of requested integers separated by spaces.
class FunWithSequences
  def self.run
    sequence_length
    sequence1 = get_sequence
    sequence_length
    sequence2 = get_sequence

    result = sequence1 - sequence2
    result.join(" ")

    # run
  end

  def self.sequence_length
    input = nil
    while !input || input == "" || !("2".."100").include?(input)
      input = gets.chomp
    end
  end

  def self.get_sequence
    gets.chomp.split(" ")
  end

  # class FunWithSequences
end

FunWithSequences.run
