class Formatter
  def fizz_buzz(number)
    result = ''
    result << 'fizz' if number % 3 == 0
    result << 'buzz' if number % 5 == 0
    result = number.to_s if result == ''
    result
  end
end

