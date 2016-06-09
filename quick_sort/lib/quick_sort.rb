class QuickSort

  def self.sort(array)
    return [] if array.size == 0

    partition_value, *rest_of_array = *array
    less, more = rest_of_array.partition{|item| item < partition_value}
    sort(lower_values) + [partition_value] + sort(greater_values)
  end

end
