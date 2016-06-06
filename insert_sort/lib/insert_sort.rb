class InsertSort

  def self.sort(array)
    array.each_with_index do |item, index|
      j = index
      while j >0 && array[j-1] > item
        array[j] = array[j-1]
        j -= 1
      end
      array[j] = item
    end
    array
  end

end
