class Phrase
  attr_reader :sentence, :words, :counts

  def initialize(sentence)
    @sentence = sentence
    @words = build_words
    @counts = Hash.new 0
  end

  def build_words
    sentence.scan(/[\w'-]+/)
  end

  def word_count
    words.each do |word|
      counts[word.downcase] += 1
    end

    counts
  end
end
