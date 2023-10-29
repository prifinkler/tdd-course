require_relative 'quoted'

RSpec.describe QuotedString do

  before do
    @placeholder = 5 + 10
    @interpolated = "The sum of 5 + 10 is: 15"
  end

  context "quoted with $q" do
    it "should not output interpolated text" do
      # %q behaves like a single quote
      sentence = %q{The sum of 5 + 10 is: #{@placeholder}}
      text = QuotedString.new(sentence)

      expect(text.to_s.start_with?('The sum')).to eq(true)
      expect(text).not_to eq(@interpolated)
    end
  end

  context "quoted with $Q" do
    it "should output interpolated text" do
      # %Q behaves like a double quote
      sentence = %Q{The sum of 5 + 10 is: #{@placeholder}}
      text = QuotedString.new(sentence)

      expect(text.to_s).to eq(@interpolated)
    end
  end

end
