require "minitest/autorun"
require_relative "roman.rb"

class TestRomanNumberals < Minitest::Test
  def setup
    @roman_numbers = RomanNumberals.new
  end

  def test_convert_negative_number
    assert_equal @roman_numbers.convert(-5), "Enter a valid number"
  end

  def test_convert_zero_number
    assert_equal @roman_numbers.convert(0), "Enter a valid number"
  end

  def test_convert_ones
    assert_equal @roman_numbers.convert(1), "I"
    assert_equal @roman_numbers.convert(2), "II"
    assert_equal @roman_numbers.convert(3), "III"
    assert_equal @roman_numbers.convert(4), "IV"
    assert_equal @roman_numbers.convert(5), "V"
    assert_equal @roman_numbers.convert(6), "VI"
    assert_equal @roman_numbers.convert(7), "VII"
    assert_equal @roman_numbers.convert(8), "VIII"
    assert_equal @roman_numbers.convert(9), "IX"
  end

  def test_convert_tens
    assert_equal @roman_numbers.convert(10), "X"
    assert_equal @roman_numbers.convert(20), "XX"
    assert_equal @roman_numbers.convert(30), "XXX"
    assert_equal @roman_numbers.convert(40), "XL"
    assert_equal @roman_numbers.convert(50), "L"
    assert_equal @roman_numbers.convert(60), "LX"
    assert_equal @roman_numbers.convert(70), "LXX"
    assert_equal @roman_numbers.convert(80), "LXXX"
    assert_equal @roman_numbers.convert(90), "XC"
  end

  def test_convert_hundreds
    assert_equal @roman_numbers.convert(100), "C"
    assert_equal @roman_numbers.convert(200), "CC"
    assert_equal @roman_numbers.convert(300), "CCC"
    assert_equal @roman_numbers.convert(400), "CD"
    assert_equal @roman_numbers.convert(500), "D"
    assert_equal @roman_numbers.convert(600), "DC"
    assert_equal @roman_numbers.convert(700), "DCC"
    assert_equal @roman_numbers.convert(800), "DCCC"
    assert_equal @roman_numbers.convert(900), "CM"
  end

  def test_convert_thousands
    assert_equal @roman_numbers.convert(1000), "M"
    assert_equal @roman_numbers.convert(2000), "MM"
    assert_equal @roman_numbers.convert(3000), "MMM"
    assert_equal @roman_numbers.convert(4000), "MV"
    assert_equal @roman_numbers.convert(5000), "V"
    assert_equal @roman_numbers.convert(6000), "VI"
    assert_equal @roman_numbers.convert(7000), "VII"
    assert_equal @roman_numbers.convert(8000), "VIII"
    assert_equal @roman_numbers.convert(9000), "IX"
  end

  def test_convert_tens_with_ones
    assert_equal @roman_numbers.convert(15), "XV"
  end

  def test_convert_hundres_with_tens_and_ones
    assert_equal @roman_numbers.convert(189), "CLXXXIX"
  end

  def test_convert_thousands_with_hundres_tens_and_ones
    assert_equal @roman_numbers.convert(2220), "MMCCXX"
  end
end
