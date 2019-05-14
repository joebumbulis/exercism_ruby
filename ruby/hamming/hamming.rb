class Hamming
  def self.compute(x_strand, y_strand)
    check_ham(x_strand, y_strand) if same_length?(x_strand, y_strand)
  end

  private
  def self.check_ham(x, y)
    counter = 0

    x.chars.map.with_index do |x_letter, x_index|
      y.chars.map.with_index do |y_letter, y_index|
        counter += 1  if x_letter != y_letter && x_index == y_index
      end
    end
    
    counter
  end

  def self.same_length?(x, y)
    if x.length == y.length
      true
    else
      raise ArgumentError, 'Arguments must be the same length.'
    end
  end
end
