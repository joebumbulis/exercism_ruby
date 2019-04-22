class Triangle
  attr_reader :sides

  def initialize(sides_array)
    @sides = sides_array
  end

  UNIQUE_SIDES = {
    equilateral: 1,
    isosceles:   2,
    scalene:     3
  }


  UNIQUE_SIDES.each do |triangle, unique_sides|
    define_method("#{triangle}?") do
      test_sides(unique_sides) unless triangle_inequality?
    end
  end

  def test_sides(unique_sides)
    if (unique_sides != 3)
      sides.uniq.size <= unique_sides
    else
      sides.uniq.size == unique_sides
    end
  end

  def triangle_inequality?
    sides.any? {|side| side <= 0} ||
    sides.min(2).reduce(:+) < sides.max
  end
end
