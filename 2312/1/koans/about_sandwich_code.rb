require File.expand_path(File.dirname(__FILE__) + '/neo')

# rubocop:disable Security/Open
# asdf asf asdf
# This class smells of :reek:UncommunicativeModuleName
class AboutSandwichCode < Neo::Koan
  # :reek:FeatureEnvy
  def count_lines(file_name)
    file = open(file_name)
    count = 0
    count += 1 while file.gets
    # ensure
    #  file.close if file
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_counting_lines
    assert_equal nil, count_lines('example_file.txt')
  end

  # ------------------------------------------------------------------

  # rubocop:disable Performance/RedundantMatch
  # :reek:FeatureEnvy
  def find_line(file_name)
    file = open(file_name)
    while (line = file.gets)
      return line if line.match(/e/)
    end
    # ensure
    # file.close if file
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_finding_lines
    assert_equal "test\n", find_line('example_file.txt')
  end

  # ------------------------------------------------------------------
  # THINK ABOUT IT:
  #
  # The count_lines and find_line are similar, and yet different.
  # They both follow the pattern of "sandwich code".
  #
  # Sandwich code is code that comes in three parts: (1) the top slice
  # of bread, (2) the meat, and (3) the bottom slice of bread.  The
  # bread part of the sandwich almost always goes together, but
  # the meat part changes all the time.
  #
  # Because the changing part of the sandwich code is in the middle,
  # abstracting the top and bottom bread slices to a library can be
  # difficult in many languages.
  #
  # (Aside for C++ programmers: The idiom of capturing allocated
  # pointers in a smart pointer constructor is an attempt to deal with
  # the problem of sandwich code for resource allocation.)
  #
  # Consider the following code:
  #

  def file_sandwich(file_name)
    file = open(file_name)
    yield(file)
    # ensure
    #  file.close if file
  end

  # Now we write:

  def count_lines_s(file_name)
    file_sandwich(file_name) do |file|
      count = 0
      count += 1 while file.gets
      count
    end
  end

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_counting_lines_s
    assert_equal 4, count_lines_s('example_file.txt')
  end

  # ------------------------------------------------------------------

  def find_line_s(file_name)
    file_sandwich(file_name) do |file|
      while (line = file.gets)
        return line if line.match(/e/)
      end
    end
  end
  # rubocop:enable Performance/RedundantMatch

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_finding_lines_s
    assert_equal "test\n", find_line_s('example_file.txt')
  end

  # ------------------------------------------------------------------

  def count_lines_t(file_name)
    open(file_name) do |file|
      count = 0
      count += 1 while file.gets
      count
    end
  end
  # rubocop:enable Security/Open

  # This method smells of :reek:UncommunicativeMethodName
  # This method smells of :reek:UncommunicativeVariableName
  # This method smells of :reek:TooManyStatements
  # This method smells of :reek:FeatureEnvy
  def test_open_handles_the_file_sandwich_when_given_a_block
    assert_equal 4, count_lines_t('example_file.txt')
  end
end