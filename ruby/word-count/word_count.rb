class Phrase
  attr_reader :sentence

  def initialize(sentence)
    @sentence = sentence
  end


  def word_count
    words.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
  end

  private

  def words
    sentence.scan(/\b[\w'-]+\b/).map(&:downcase)
  end
end
