class StringParser
  def self.add(num_str)
    if num_str.empty?
      return 0
    else
      cleaned_input = num_str.gsub(/^['"]|['"]$/, '') # if input like '2,3,4' then removes quote
      cleaned_input.split(',').map(&:to_i).sum
    end
  end
end