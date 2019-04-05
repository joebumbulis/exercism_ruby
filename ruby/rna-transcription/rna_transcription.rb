class Complement
  def self.of_dna(string)
    string.gsub(/[GCTA]/, 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U') 
  end
end
