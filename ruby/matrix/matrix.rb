class Matrix
  attr_reader :rows, :columns, :matrix

  def initialize(matrix)
    @matrix = matrix
    @rows = build_rows
    @columns = build_columns(rows)
  end

  private
  def build_rows
    matrix_array = matrix.split("\n")

    matrix_array.map do |row|
      row.split(' ').map(&:to_i)
    end
  end

  def build_columns(rows)
    rows.transpose
  end

end
