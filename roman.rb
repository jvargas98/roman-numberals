class RomanNumberals
  ONES_SYMBOLS = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
  TENS_SYMBOLS = ["X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
  HUNDREDS_SYMBOLS = ["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
  THOUSANDS_SYMBOLS = ["M", "MM", "MMM", "MV", "V", "VI", "VII", "VIII", "IX"]

  SYMBOLS = [THOUSANDS_SYMBOLS, HUNDREDS_SYMBOLS, TENS_SYMBOLS, ONES_SYMBOLS]

  def convert(number)
    return "Enter a valid number" if number.zero? || number.negative?
    numbers = get_OTHT(number)
    result = ""
    (0...SYMBOLS.size).each do |index|
      result += numbers[index] > 0 ? SYMBOLS[index][numbers[index] - 1] : ""
    end
    result
  end

  def get_OTHT(number_to_slice)
    slices_numbers = []
    thousands = number_to_slice / 1000
    hundreds = (number_to_slice - (thousands * 1000)) / 100
    tens = (number_to_slice - (thousands * 1000 + hundreds * 100)) / 10
    ones = number_to_slice - (thousands * 1000 + hundreds * 100 + tens * 10)
    slices_numbers << thousands << hundreds << tens << ones
  end
end
