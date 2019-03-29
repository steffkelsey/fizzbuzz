import fizzBuzz from "../"
import each from 'jest-each'

describe("fizzBuzz", () => {

	each([
		[1, "1"],
		[2, "2"],
		[4, "4"],
		[97, "97"]
	]).it("when given a non-matching number returns stringified number", (input, expected) => {

			const actual = fizzBuzz(input)

			expect(actual).toBe(expected)
	})

	each([
		[3],
		[6],
		[9]
	]).it("when given a multiple of 3 returns 'fizz'", (input) => {
		const expected = "fizz"

		const actual = fizzBuzz(input)

		expect(actual).toBe(expected)
	})

	each([
		[5],
		[10],
		[20]
	]).it("when given a multiple of 5 returns 'buzz'", (input) => {
		const expected = "buzz"

		const actual = fizzBuzz(input)

		expect(actual).toBe(expected)
	})

	each([
		[15],
		[30],
		[45]
	]).it("when given a multiple of 3 and 5 returns 'fizzbuzz'", (input) => {
		const expected = "fizzbuzz"

		const actual = fizzBuzz(input)

		expect(actual).toBe(expected)
	})
});

