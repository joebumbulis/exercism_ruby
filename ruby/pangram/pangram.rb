module Pangram
  def self.pangram?(sentence)
    sentence_array = sentence.downcase.split('')
    alphabet = ("a".."z").to_a

    if sentence_array.length > 0
      alphabet.all? {|letter| sentence_array.include?(letter)}
    end
  end
end
