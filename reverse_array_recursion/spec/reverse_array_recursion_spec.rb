require_relative "../reverse_array_recursion"

RSpec.describe ReverseArray, "#reverse" do
  context "the result of recursion" do
    it "gives correct reversed array" do
      reverse_array = ReverseArray.new([1,2,3,4])
      expect(reverse_array.main).to eq [4,3,2,1]
    end

    it "it checks wrong result" do
      reverse_array = ReverseArray.new([1,2,3,4])
      expect(reverse_array.main).not_to eq [1,2,3,4]
    end

    it "checks odd-indexed array" do
      reverse_array = ReverseArray.new([1,2,3])
      expect(reverse_array.main).to eq [3,2,1] 
    end
  end
end
