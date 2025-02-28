class StringParser
  def self.add(num_str)
    if num_str.empty?
      return 0
    else
      # if input like '2,3,4' then removes quote
      cleaned_input = num_str.gsub(/^['"]|['"]$/, '')

      delimiter = ','

      if cleaned_input.start_with?("//")
        del_part, num_part = cleaned_input.split(/\n/, 2)
        delimiter = del_part[2..-1]
        cleaned_input = num_part
      end

      # if input have \n or keyboard enter
      filter_input = cleaned_input.gsub(/\\n|\n/, delimiter)

      filter_input.split(delimiter).map(&:to_i).sum
    end
  end
end