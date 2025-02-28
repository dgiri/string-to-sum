require_relative 'string_parser'

test_data = [
  '',
  '1',
  '1,2',
  '1,2,3,4,5,10',
  '"2,3,4"',
  '1\n2,3',
  '2\n3,4\n\n10',
  "//;\n1;2",
  "//:\n1:2",
  "//:\n1:6\n:12:\n18\n:13",
  "//;",
  "1,-2",
  "1,-2,5,-6",
]

test_data.each do |str|
  puts "Input String: #{str.inspect}"
  result = StringParser.add(str)
  puts "Output: #{result}"
  puts "----------"
end