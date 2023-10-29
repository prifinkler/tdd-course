require_relative 'strings'

RSpec.describe BasicString do

  before do
    @test_word = "Ruby"
    @sentence = "There is a gemstone called ruby in existence."

    @text = BasicString.new(@sentence)
  end

  context "case-sensitive" do
    it "should output interpolated text" do
      result = @text.contains_word?(@test_word)
      expect(result).to eq(false)
    end
  end

  context "case-insensitive" do
    it "should output interpolated text" do
      result = @text.contains_word_ignore_case?(@test_word)
      expect(result).to eq(true)
    end
  end
end
