class StringParser
  def self.add(num_str)
    if num_str.empty?
      return 0
    else
      # if input like '2,3,4' then removes quote
      cleaned_input = num_str.gsub(/^['"]|['"]$/, '')

      # if input have \n or keyboard enter
      filter_input = cleaned_input.gsub(/\\n|\n/, ',')

      filter_input.split(',').map(&:to_i).sum
    end
  end
end