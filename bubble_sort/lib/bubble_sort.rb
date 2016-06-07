class BubbleSort

  def self.sort(array)
    array.each_with_index do |item, index|
      j = array.size-1
      while j > index
        if array[j] < array[j-1]
          temp = array[j-1]
          array[j-1] = array[j]
          array[j] = temp
        end
        j -= 1
      end
    end
    array
  end

end
