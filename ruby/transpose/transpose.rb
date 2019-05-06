class Transpose
  def self.transpose(input)
    if input.length <= 0
      ''
    else
      lines = input.lines.map(&:strip)
      size = lines.map(&:length).max
      lines.map{ |line| line.ljust(size).chars }
           .transpose
           .map(&:join)
           .map(&:rstrip)
           .join("\n")
           .strip
    end
  end
end
