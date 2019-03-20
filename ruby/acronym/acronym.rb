class Acronym
  def self.abbreviate(phrase)
    result = phrase.split(/\W+/).map{|word| word[0,1]}.join.upcase
  end
end
