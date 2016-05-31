require_relative '../string_calculator'

RSpec.describe StringCalculator do
  before(:all) do
    @calculator = StringCalculator.new
  end

  describe ".add" do
    context "given an empty string" do
      it "returns zero when given no args" do
        expect(@calculator.add()).to eql(0)
      end
      it "returns zero when given an empty string" do
        expect(@calculator.add("")).to eql(0)
      end
    end

    context "given a single number" do
      it "returns 4 when given 4" do
        expect(@calculator.add(4)).to eql(4)
      end
      it "returns 10 when given 10" do
        expect(@calculator.add(10)).to eql(10)
      end
    end
  end

end
