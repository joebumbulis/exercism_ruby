class Squares
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def square_of_sum
    (1..number).to_a.sum ** 2
  end

  def sum_of_squares
    (1..number).to_a.map {|num| num ** 2}.sum
  end

  def difference
    self.square_of_sum - self.sum_of_squares
  end
end
