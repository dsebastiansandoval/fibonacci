# fibonacci_test.rb
require 'minitest/autorun'
require_relative 'fibonacci'  

class TestFibonacci < Minitest::Test
  def test_fibonacci
    assert_equal 0, fibonacci(0)
    assert_equal 1, fibonacci(1)
    assert_equal 1, fibonacci(2)
    assert_equal 2, fibonacci(3)
    assert_equal 3, fibonacci(4)
    assert_equal 5, fibonacci(5)
    assert_equal 8, fibonacci(6)
    assert_equal 13, fibonacci(7)
    assert_raises(ArgumentError) { fibonacci(-1) } 
  end
end

