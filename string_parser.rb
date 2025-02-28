class StringParser
  def self.add(num_str)
    if num_str.empty?
      return 0
    else
      num_str.split(',').map(&:to_i).sum
    end
  end
end