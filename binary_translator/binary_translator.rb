class Integer
  @@binary_number = ""
  def binary
    clear_binary
    if self != 0
      (self/2).binary
      @@binary_number << (self % 2).to_s
    else
      return 0
    end
    return @@binary_number.to_i
  end

  def clear_binary
    @@binary_number = "" if @@binary_number != ""
  end
end
