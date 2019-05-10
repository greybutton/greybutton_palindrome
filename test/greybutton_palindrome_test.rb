require 'test_helper'

class GreybuttonPalindromeTest < Minitest::Test
  def test_non_palindrome
    refute 'apple'.palindrome?
  end

  def test_literal_palindrome
    assert 'racecar'.palindrome?
  end

  def test_mixed_case_palindrome
    assert 'RaceCar'.palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_integer_non_palindrome
    refute 123_45.palindrome?
  end

  def test_integer_palindrome
    assert 123_21.palindrome?
  end
end
