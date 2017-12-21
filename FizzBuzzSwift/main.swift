import Foundation

print("FizzBuzz!")

let formatter = FizzBuzzFormatter()
var newLineCnt = 0
for i in 0...101 {
    print("i:\(i) formatted = \(formatter.format(number: i)) |  ", terminator: "")
    newLineCnt += 1
    if newLineCnt > 2 {
        newLineCnt = 0
        print("")
    }
}
