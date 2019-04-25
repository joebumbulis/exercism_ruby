class Series
  ERROR_MESSAGE = "Expected slice size to be the same size or smaller the string."

  def initialize(digits_string)
    @num_array = digits_string.chars
  end

  def slices(series_length)
    raise ArgumentError.new(ERROR_MESSAGE) if (num_array.length < series_length)

    transform_array_into_slices(series_length)
  end

  private
  attr_reader :num_array

  def transform_array_into_slices(series_length)
    num_array.each_cons(series_length).map(&:join)
  end
end
