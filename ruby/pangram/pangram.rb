class Pangram
  def self.pangram?(sentence)
    sentence_array = sentence.downcase.split('')
    alphabet = "abcdefghijklmnopqrstuvwxyz".split('')

    if sentence_array.length > 0
      alphabet.all? {|letter| sentence_array.include?(letter)}
    end
  end
end
