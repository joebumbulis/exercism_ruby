class Anagram
  attr_reader :word_to_match

  def initialize(word_to_anagram)
    @word_to_match = word_to_anagram
  end

  def match(words_list)
    words_list.select do |word_from_list|
      split_and_sort(word_to_match) == split_and_sort(word_from_list) &&
      different_word?(word_from_list)
    end
  end

private
  def split_and_sort(word)
    word.downcase.chars.sort
  end

  def different_word?(word)
    word.downcase != word_to_match.downcase
  end
end
