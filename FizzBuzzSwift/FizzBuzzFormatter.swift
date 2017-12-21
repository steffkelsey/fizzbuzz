import Foundation

public class FizzBuzzFormatter {
    
    public init() {}
    
    public func format(number: Int) -> String {
        var result = ""
        if number % 3 == 0 {
            result += "fizz"
        }
        if number % 5 == 0 {
            result += "buzz"
        }
        if result == "" {
            result = "\(number)"
        }
        return result
    }
}
