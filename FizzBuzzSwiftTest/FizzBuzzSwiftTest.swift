import XCTest
@testable import FizzBuzzSwift

class FizzBuzzSwiftTest: XCTestCase {
    var formatter:FizzBuzzFormatter!
    
    override func setUp() {
        super.setUp()
        formatter = FizzBuzzFormatter()
    }
    
    func test_when_given_non_matching_num_return_stringified_num() {
        let testCases = [1, 2, 4]
        
        let actual = testCases.map { return formatter.format(number: $0) }

        for i in 0...testCases.count-1 {
            XCTAssertEqual("\(testCases[i])", actual[i], "should return '\(testCases[i])' when given \(testCases[i])");
        }
    }
    
    func test_when_given_a_multiple_of_3_return_fizz() {
        let testCases = [3,6,9,12]
        let expected = "fizz"
        
        let actual = testCases.map { return formatter.format(number: $0) }
        
        for i in 0...testCases.count-1 {
            XCTAssertEqual(actual[i], expected, "should return 'fizz' when given a multiple of 3")
        }
    }
    
    func test_when_given_5_return_buzz() {
        let testCases = [5,10,20]
        let expected = "buzz"
        
        let actual = testCases.map { return formatter.format(number: $0) }
        
        for i in 0...testCases.count-1 {
            XCTAssertEqual(actual[i], expected, "should return 'buzz' when given a multiple of 5")
        }
    }
    
    func test_when_given_multiples_of_3_and_5_return_fizzbuzz() {
        let testCases = [15,30,45,60]
        let expected = "fizzbuzz"
        
        let actual = testCases.map { return formatter.format(number: $0) }
        
        for i in 0...testCases.count-1 {
            XCTAssertEqual(actual[i], expected, "should return 'fizzbuzz' when given a multiples of 3 and 5")
        }
    }
}
