class Hamming
  ARG_ERROR = 'Arguments must be the same length'

  def self.compute(x_strand, y_strand)
    raise ArgumentError, ARG_ERROR if x_strand != y_strand
    check_ham(x_strand, y_strand)
  end

  private
  def check_ham(x, y)
    x.chars.zip(y.chars).count{|a, b| a != b}
  end
end
