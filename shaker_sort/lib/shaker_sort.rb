class ShakerSort

  def self.sort(array)
    begin
      swapped_items = false
      0.upto(array.size-2) do |i|
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          swapped_items = true
        end
      end
      break unless swapped_items

      swapped = false
      (array.size-2).downto(0) do |i|
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          swapped_items = true
        end
      end
    end while swapped_items
    array
  end

end
