class Acronym
  def self.abbreviate(phrase)
    phrase.scan(/\b[A-Za-z]/).join.upcase
  end
end
