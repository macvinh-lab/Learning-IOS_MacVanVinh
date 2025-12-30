import Foundation

// Basic 1 - in 1-10
for number in 1...10 {
    print(number)
}

// Basic 2 - tổng các số trong mảng
let numbers = [1, 2, 3, 4, 5]
var total: Int = 0
for number in numbers {
    total = total + number
}
print("Total: \(total)")
// Basic 3 - Bỏ qua số chẵn
for number in 1...10 {
    if number % 2 == 0 {
        continue
    }
    print(number)
}
// Basic 4 - Hàm chào hỏi

func greet (_ name: String){
    print("Hello \(name)")
}
greet("Vinh")
greet("Châu")

// Basic 5 - Hàm bình phương
func square (_ number : Int) -> Int {
    return number * number
}

print("\(square(5))")
print("\(square(4))")

// Basic 6 - Default parameter
func Greet (_ names : String = "Guest") {
    print("Hello \(names)")
}
Greet()

// Basic 7 - Viết hàm in ra số vừa nhập
func printNumber (_ number : Int...){
    print(number)
}
print(1,2,3)
print(1,2,3,4,5,6)

// Basic 8 - Throw function mức cơ bản
enum InvalidError : Error {
    case invalidNumber
}

func checkNumber (_ number: Int) throws {
    if number < 0 {
        throw InvalidError.invalidNumber
    }
}
do {
    try checkNumber(5)
    print("valid number")
}
catch InvalidError.invalidNumber {
    print("Invalid number")
}

// Basic 9 - inout đơn giản
func backNumber (_ number : inout Int) {
    number = 0
}
var a : Int = 10
print(a)
backNumber(&a)
print(a)
