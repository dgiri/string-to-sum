require_relative 'string_parser'

puts "Enter comma-separated numbers:"
input = gets.chomp
result = StringParser.add(input)
puts "Sum: #{result}"