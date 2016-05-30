require_relative '../array_searching'

RSpec.describe Array do
  before(:all) do
    @array = [1, 2, 3]
  end

  context "array searching with recursion" do
    it "returns true if the value exists in array" do
      expect(@array.value_in_array_recursion(2)).to eq(true)
    end
    it "returns false if the value doesn't exist in array" do
      expect(@array.value_in_array_recursion(4)).to eq(false)
    end
  end

  context "array searching with iteration" do
    it "returns true if the value exists in array" do
      expect(@array.value_in_array_iteration(2)).to eq(true)
    end
    it "returns true if the value doesn't exist in array" do
      expect(@array.value_in_array_iteration(4)).to eq(false)
    end
  end
end
