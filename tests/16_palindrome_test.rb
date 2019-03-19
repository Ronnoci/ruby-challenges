require 'test/unit'
require_relative '../16_palindrome'

class PalindromeTest < Test::Unit::TestCase
  def test_palindrome
    
    assert_true(palindrome("mom"))
    assert_true(palindrome("racecar"))
    assert_true(palindrome("noon"))
  end
  def test_non_palindrome
    assert_false(palindrome("hello"))
    assert_false(palindrome("goodbye"))
  end
end