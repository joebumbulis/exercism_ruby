class FlattenArray
  def self.flatten(array)
    flatten_array = array.flatten
    flatten_array.compact
  end
end
