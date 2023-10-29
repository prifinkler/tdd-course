require_relative 'calculator'

RSpec.describe Calculator do

  before do
    @first = 10
    @second = 50
  end

  context "adding two numbers together" do
    it "should return the sum of two numbers" do
      result = Calculator.add(@first, @second)
      expect(result).to eq(60)
    end
  end

  context "substracting one number from another" do
    it "should return the difference of the numbers" do
      result = Calculator.substract(@first, @second)
      expect(result).to eq(-40)
    end
  end

  context "multiplying two numbers" do
    it "should return the product of the numbers" do
      result = Calculator.multiply(@first, @second)
      expect(result).to eq(500)
    end
  end

  context "dividing two numbers" do
    it "should return the quotient of the numbers" do
      result = Calculator.divide(@first, @second)
      expect(result).to eq(0.2)
    end
  end

  context "raising one numbers to the power of another" do
    it "should return the first number to the power of the other number" do
      result = Calculator.exp(2, 3)
      expect(result).to eq(8)
    end
  end
end
