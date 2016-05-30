# Reverse array with recursion method

class ReverseArray
  attr_accessor :array_given
  def initialize(array_given)
    @array_given = array_given
  end


  def reverse (array, left,right)
    if left < right
      array[right], array[left] = array[left], array[right]
      reverse(array,left+1, right - 1)
    end
  end

  def main
    right = 0
    left = @array_given.size-1
    reverse(@array_given, right, left)
    @array_given
  end
end
