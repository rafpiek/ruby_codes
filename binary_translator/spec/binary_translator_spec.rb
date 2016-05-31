require_relative '../binary_translator'

RSpec.describe Integer do
  context "correct binary translation of the number" do
    it "is working" do
      expect(0.binary).to eq(0)
      expect(1.binary).to eq(1)
      expect(2.binary).to eq(10)
      expect(3.binary).to eq(11)
      expect(10.binary).to eq(1010)
      expect(18.binary).to eq(10010)
      expect(50.binary).to eq(110010)
      expect(100.binary).to eq(1100100)
      expect(234.binary).to eq(11101010)
      expect(999.binary).to eq(1111100111)
      expect(1000.binary).to eq(1111101000)
    end
  end
end
