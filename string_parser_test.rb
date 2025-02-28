require 'minitest/autorun'
require_relative 'string_parser'

class StringParserTest < Minitest::Test
  def test_empty_string
    assert_equal 0, StringParser.add('')
  end

  def test_with_two_numbers
    assert_equal 3, StringParser.add('1,2')
  end

  def test_with_multiple_numbers
    assert_equal 25, StringParser.add('1,2,3,4,5,10')
  end

  def test_with_quoted_input
    # Expected: 9
    # Actual: 7 if not parsed
    assert_equal 9, StringParser.add('"2,3,4"')
  end

  def test_with_newline_char
    assert_equal 9, StringParser.add('"2\n3,4"')
  end
end