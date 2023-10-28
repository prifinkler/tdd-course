require_relative 'word'

describe Word do
  context "test word is a palindrome" do
    it "should read the same forwards as backwards" do
      test_word = "Madam"
      result = Word.palindrome?(test_word.downcase)
      expect(result).to be_truthy
    end
  end

  context "test word is not a palindrome" do
    it "should not read the same forwards as backwards" do
      test_word = "Food"
      result = Word.palindrome?(test_word.downcase)
      expect(result).to be_falsey
    end
  end
end
