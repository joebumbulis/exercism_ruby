class SumOfMultiples
  attr_reader :multipliers

  def initialize(*multipliers)
    @multipliers = multipliers
  end

  def to(num)
      (1...num).to_a.select do |natural_num|
        multipliers.any? {|multiplier| natural_num % multiplier == 0}
      end.sum
  end
end
