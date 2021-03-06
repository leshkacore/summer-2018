require File.expand_path(File.dirname(__FILE__) + '/neo')
# asdjaif aludflas lasdf gskjdfas
# This class smells of :reek:UncommunicativeModuleName
class AboutStrings < Neo::Koan
  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_double_quoted_strings_are_strings
    string = 'Hello, World'
    assert_equal true, string.is_a?(String)
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_single_quoted_strings_are_also_strings
    string = 'Goodbye, World'
    assert_equal true, string.is_a?(String)
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_use_single_quotes_to_create_string_with_double_quotes
    string = 'He said, "Go Away."'
    assert_equal 'He said, "Go Away."', string
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_use_double_quotes_to_create_strings_with_single_quotes
    string = "Don't"
    assert_equal 'Don\'t', string
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_use_backslash_for_those_hard_cases
    aab = "He said, \"Don't\""
    bab = 'He said, "Don\'t"'
    assert_equal true, aab == bab
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_use_flexible_quoting_to_handle_really_hard_cases
    aab = %(flexible quotes can handle both ' and " characters)
    bab = %(!flexible quotes can handle both ' and " characters!)
    cab = %({flexible quotes can handle both ' and " characters})
    assert_equal false, aab == bab
    assert_equal false, aab == cab
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_flexible_quotes_can_handle_multiple_lines
    long_string = %(
It was the best of times,
It was the worst of times
)
    # assert_equal ' It was the best of times, It was the worst of times '.lengt
    #              long_string.length
    assert_equal 3, long_string.lines.count
    assert_equal "\n", long_string[0, 1]
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_here_documents_can_also_handle_multiple_lines
    long_string = %(
It was the best of times,
It was the worst of times
)
    # assert_equal ' It was the best of times,It was the worst of times '.length
    #             long_string.length
    assert_equal 3, long_string.lines.count
    assert_equal "\n", long_string[0, 1]
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_plus_will_concatenate_two_strings
    string = 'Hello, ' + 'World'
    assert_equal 'Hello, World', string
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_plus_concatenation_will_leave_the_original_strings_unmodified
    hi = 'Hello, '
    there = 'World'
    # string = hi + there
    assert_equal 'Hello, ', hi
    assert_equal 'World', there
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_plus_equals_will_concatenate_to_the_end_of_a_string
    hi = 'Hello, '
    there = 'World'
    hi += there
    assert_equal 'Hello, World', hi
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_plus_equals_also_will_leave_the_original_string_unmodified
    original_string = 'Hello, '
    # hi = original_string
    # there = 'World'
    # hi += there
    assert_equal 'Hello, ', original_string
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_the_shovel_operator_will_also_append_content_to_a_string
    hi = 'Hello, '
    there = 'World'
    hi << there
    assert_equal 'Hello, World', hi
    assert_equal 'World', there
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_the_shovel_operator_modifies_the_original_string
    original_string = 'Hello, '
    hi = original_string
    there = 'World'
    hi << there
    assert_equal 'Hello, World', original_string

    # THINK ABOUT IT:
    #
    # Ruby programmers tend to favor the shovel operator (<<) over the
    # plus equals operator (+=) when building up strings.  Why?
  end
end
# asdasfa as aso asojflasg
# This class smells of :reek:UncommunicativeModuleName
class AboutStrings < Neo::Koan
  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_double_quoted_string_interpret_escape_characters
    string = "\n"
    assert_equal 1, string.size
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_single_quoted_string_do_not_interpret_escape_characters
    string = '\n'
    assert_equal 2, string.size
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_single_quotes_sometimes_interpret_escape_characters
    string = '\\\''
    assert_equal 2, string.size
    assert_equal "\\'", string
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_double_quoted_strings_interpolate_variables
    value = 123
    string = "The value is #{value}"
    assert_equal 'The value is 123', string
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_single_quoted_strings_do_not_interpolate
    value = 123
    string = "The value is #{value}"
    assert_equal "The value is #{value}", string
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_any_ruby_expression_may_be_interpolated
    string = "The square root of 4 is #{Math.sqrt(4)}"
    assert_equal 'The square root of 4 is 2.0', string
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_you_can_get_a_substring_from_a_string
    string = 'Bacon, lettuce and tomato'
    assert_equal 'let', string[7, 3]
    assert_equal 'let', string[7..9]
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_you_can_get_a_single_character_from_a_string
    string = 'Bacon, lettuce and tomato'
    assert_equal 'a', string[1]

    # Surprised?
  end

  in_ruby_version('1.8') do
    # This method smells of :reek:UncommunicativeMethodName
    # This method smells of :reek:UncommunicativeVariableName
    # This method smells of :reek:TooManyStatements
    # This method smells of :reek:FeatureEnvy
    def test_in_older_ruby_single_characters_are_represented_by_integers
      assert_equal 'a', 'a'
      assert_equal true, 'a' == 97
      # assert_equal true, 'b' == ('a' + 1)
    end
  end

  in_ruby_version('1.9', '2') do
    # This method smells of :reek:UncommunicativeMethodName
    # This method smells of :reek:UncommunicativeVariableName
    # This method smells of :reek:TooManyStatements
    # This method smells of :reek:FeatureEnvy
    def test_in_modern_ruby_single_characters_are_represented_by_strings
      assert_equal 'a', 'a'
      assert_equal false, 'a' == 97
    end
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_strings_can_be_split
    string = 'Sausage Egg Cheese'
    words = string.split
    assert_equal %w[Sausage Egg Cheese], words
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_strings_can_be_split_with_different_patterns
    string = 'the:rain:in:spain'
    words = string.split(/:/)
    assert_equal %w[the rain in spain], words

    # NOTE: Patterns are formed from Regular Expressions.  Ruby has a
    # very powerful Regular Expression library.  We will become
    # enlightened about them soon.
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_strings_can_be_joined
    words = [%w[Now], %w[is], %w[the], %w[time]]
    assert_equal 'Now is the time', words.join(' ')
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_strings_are_unique_objects
    aab = 'a string'
    bab = 'a string'

    assert_equal true, aab           == bab
    assert_equal false, aab.object_id == bab.object_id
  end
end
