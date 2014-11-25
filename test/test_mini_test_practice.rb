require 'minitest_helper'

class TestMiniTestPractice < MiniTest::Unit::TestCase
  def test_that_it_has_a_version_number
    refute_nil ::MiniTestPractice::VERSION
  end
  def setup
      @myClass = MiniTestPractice::MyClass.new
  end
  def test_odd?
    assert_equal false, @myClass.odd?(0)
    assert_equal true, @myClass.odd?(1)
    assert_equal false, @myClass.odd?(2)
  end
  
  def test_number?
  assert_equal true, @myClass.check_number?(1234)
  assert_equal false, @myClass.check_number?(999)
  assert_equal false, @myClass.check_number?(0124)
  assert_equal false, @myClass.check_number?(1235)
  assert_equal false, @myClass.check_number?('2i35i')
  end

  def test_enough_length?
  assert_equal true, @myClass.enough_length?('jdhsj')
  assert_equal false, @myClass.enough_length?('1k')
  assert_equal true, @myClass.enough_length?('12345678')
  assert_equal false, @myClass.enough_length?('12345678910')
  end

  def test_devide
  assert_equal 10 ,@myClass.devide(20,2)
  assert_equal 2.5  ,@myClass.devide(10,4)
  assert_throws(ZeroDivisionError){ @myClass.devide(10,0)}
  end

  def test_fizz_buzz
  assert_equal 'Fizz' ,@myClass.fizz_buzz(3)
  assert_equal 'Buzz' ,@myClass.fizz_buzz(5)
  assert_equal 'FizzBuzz' ,@myClass.fizz_buzz(15)
  assert_equal '', @myClass.fizz_buzz(0)
  assert_equal '' ,@myClass.fizz_buzz(2)
  end

  def test_Hello
  assert_equal  'Hello',capture_io{@myClass.Hello}[0]
  end
end
