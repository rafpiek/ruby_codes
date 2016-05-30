class Array
  def value_in_array_iteration(value)
    @value = value
    @left = 0
    @right = self.size-1
    @result = false
    while @left <= @right  && !@result
      @result = find_value
    end
    return @result
  end

  @@set_variables = true
  def value_in_array_recursion(value)
    if @@set_variables
      @left = 0
      @right = self.size-1
      @@set_variables = false
    end
    return false if @left > @right
    mid = (@left+@right)/2
    return true if self[mid] == value
    if value < self[mid]
      @right = mid - 1
      value_in_array_recursion(value)
    else
      @left = mid + 1
      value_in_array_recursion(value)
    end
  end

  private
  def find_value
    mid = (@left+@right)/2
    return true if self[mid] == @value
    if @value < self[mid]
      @right = mid - 1
      #rekur
    else
      @left = mid + 1
      # rekur
    end
    return false
  end
end
