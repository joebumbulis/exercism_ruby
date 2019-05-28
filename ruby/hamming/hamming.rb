class Hamming
  def self.compute(strand1, strand2)

    unless strand1.length != strand2.length
      nucleotides = pairs(strand1, strand2)
      nucleotides.count{|n1, n2| n1 != n2}
    else
      raise StrandLengthError
    end
  end

  private

  def self.pairs(s1, s2)

    s1.chars.zip(s2.chars)
  end
end

class StrandLengthError < ArgumentError
  
  def initialize(message = 'Strand Lengths must be identical')
    super
  end
end
