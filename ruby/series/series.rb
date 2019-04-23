class Series
  attr_accessor :num_array

  def initialize(digits_string)
    @num_array = digits_string.split('')
  end

  def slices(series_length)
    consecutive_groups = Array.new

    if (num_array.length < series_length)
      raise ArgumentError.new(
        "Expected slice size to be the same size or smaller than string #{num_array.join}"
      )
    else
      num_array.each_cons(series_length) do |group|
        consecutive_groups.push(group.join)
      end
      consecutive_groups
    end
  end

end
