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

      # if manually typed \n or keyboard enter
      filter_input = cleaned_input.gsub(/\\n|\n/, delimiter)

      numbers = filter_input.split(delimiter).map(&:to_i)

      negative_numbers = numbers.select { |n| n < 0 }

      if negative_numbers.any?
        if negative_numbers.length == 1
          return "String should not contain negative number like: #{negative_numbers[0]}"
        else
          return "String should not contain negative numbers like: #{negative_numbers.join(',')}"
        end
      end

      numbers.sum
    end
  end
end