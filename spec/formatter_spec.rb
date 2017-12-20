require './lib/formatter'

describe Formatter do
  describe "#fizz_buzz" do
    def self.test_non_matching_numbers_return_stringified_number(number)
      it "given non matching number return string of that number" do
        expected = number.to_s

        actual = @formatter.fizz_buzz(number)

        expect(actual).to match expected
      end
    end

    def self.test_multiple_of_three_returns_fizz(number)
      it "given a multiple of three, return the string fizz" do
        expected = 'fizz'

        actual = @formatter.fizz_buzz(number)

        expect(actual).to match expected
      end
    end

    def self.test_multiple_of_five_returns_buzz(number)
      it "given a multiple of five, return the string buzz" do
        expected = 'buzz'

        actual = @formatter.fizz_buzz(number)

        expect(actual).to match expected
      end
    end

    def self.test_multiple_of_three_and_five_returns_fizzbuzz(number)
      it "given a multiple of three and five, return the string fizzbuzz" do
        expected = 'fizzbuzz'

        actual = @formatter.fizz_buzz(number)

        expect(actual).to match expected
      end
    end

    before do
      @formatter = Formatter.new
    end

    test_non_matching_numbers_return_stringified_number(1)
    test_non_matching_numbers_return_stringified_number(2)
    test_non_matching_numbers_return_stringified_number(4)

    test_multiple_of_three_returns_fizz(3)
    test_multiple_of_three_returns_fizz(6)
    test_multiple_of_three_returns_fizz(9)

    test_multiple_of_five_returns_buzz(5)
    test_multiple_of_five_returns_buzz(10)
    test_multiple_of_five_returns_buzz(20)

    test_multiple_of_three_and_five_returns_fizzbuzz(15)
    test_multiple_of_three_and_five_returns_fizzbuzz(30)
    test_multiple_of_three_and_five_returns_fizzbuzz(45)

    it "give 0, return fizzbuzz" do
      expected = 'fizzbuzz'

      actual = @formatter.fizz_buzz(0)

      expect(actual).to match expected
    end
  end
end

