/**
 
 Instructions:
 Implement a function that will take an integer as input and will return:
     “Fizz” if the integer is a multiple of 3
     “Buzz” if the integer is a multiple of 5
     “FizzBuzz” if the integer is a multiple of 3 and a multiple of 5
     If neither of these conditions were met,  return null/nil
 
 */

import UIKit

//print("------------------ If Else ------------------")
//for num in 1 ... 100 {
//    if num % 3 == 0 && num % 5 == 0 {
//        print("FizzBuzz")
//    } else if num % 3 == 0 {
//        print("Fizz")
//    } else if num % 5 == 0 {
//        print("Buzz")
//    } else {
//        print(num)
//    }
//}
////------------------------------------------------------------------------------------------------------------------------------------------------------------
//
//print("-------------- Switch with tuple -------------")
//for num in 1 ... 100 {
//    let fizz = (num % 3 == 0)
//    let buzz = (num % 5 == 0)
//    switch (fizz, buzz) {
//    case (true, false):
//        print("Fizz")
//    case (false, true):
//        print("Buzz")
//    case (true, true):
//        print("FizzBuzz")
//    case (false, false):
//        print(num)
//    }
//}
////------------------------------------------------------------------------------------------------------------------------------------------------------------
//
//print("--------------- Switch on Bool --------------")
//for num in 1 ... 100 {
//    switch true {
//    case num % 3 == 0 && num % 5 != 0:
//        print("Fizz")
//    case num % 5 == 0 && num % 3 != 0:
//        print("Buzz")
//    case num % 3 == 0 && num % 5 == 0:
//        print("FizzBuzz")
//    default:
//        print(num)
//    }
//}
////------------------------------------------------------------------------------------------------------------------------------------------------------------
//
//print("------------------ A solution using higher level function ------------------")
//func fizzBuzz(num: Int) -> String {
//    if num % 3 == 0 && num % 5 == 0 {
//        return("FizzBuzz")
//    } else if num % 3 == 0 {
//        return("Fizz")
//    } else if num % 5 == 0 {
//        return("Buzz")
//    }
//    return String(num)
//}
//
//func getRandomCount() -> Int {
//    return Int.random(in: 4...50)
//}
//
//let resultsArray = Array(1...getRandomCount()).map {fizzBuzz(num: $0)}
//print(resultsArray)
////------------------------------------------------------------------------------------------------------------------------------------------------------------
//
//print("------------------ A solution using an enum with raw value ------------------")
//enum Result: String {
//    case fizz
//    case buzz
//    case fizzBuzz
//    case number
//
//    init(number: Int) {
//        switch (number.isMultiple(of: 3), number.isMultiple(of: 5)) {
//        case (true, true):
//            self = .fizzBuzz
//        case (true, false):
//            self = .fizz
//        case (false, true):
//            self = .buzz
//        case (false, false):
//            self = .number
//        }
//    }
//}
//
//func game() {
//    var result: Result
//
//    for num in 1 ... 100 {
//        result = Result(number: num)
//        print(result == .number ? num : result)
//    }
//}
//
//game()
//------------------------------------------------------------------------------------------------------------------------------------------------------------

print("------------------ A solution using an enum and an optional ------------------")
enum ResultOptional {
    case fizz
    case buzz
    case fizzBuzz
    case number

    static func returnResult(number: Int) -> Self? {
        switch (number.isMultiple(of: 3), number.isMultiple(of: 5)) {
        case (true, true):
            return .fizzBuzz
        case (true, false):
            return .fizz
        case (false, true):
            return .buzz
        case (false, false):
            return nil
        }
    }
}

func gameOptional() {
    var result: ResultOptional?

    for num in 1 ... 100 {
        result = ResultOptional.returnResult(number: num)
        print(result ?? num)
    }
}

gameOptional()
//------------------------------------------------------------------------------------------------------------------------------------------------------------


//print("------------------ A solution using an enum with associated value ------------------")
//enum ResultValue {
//    case fizz(output: String)
//    case buzz(output: String)
//    case fizzBuzz(output: String)
//    case number(output: Int)
//
//    init(num: Int) {
//        switch (num.isMultiple(of: 3), num.isMultiple(of: 5)) {
//        case (true, true):
//            self = .fizzBuzz(output: "FizzBuzz")
//        case (true, false):
//            self = .fizz(output: "Fizz")
//        case (false, true):
//            self = .buzz(output: "Buzz")
//        case (false, false):
//            self = .number(output: num)
//        }
//    }
//}
//
//func printResult(num: Int) {
//    let result = ResultValue(num: num)
//    switch result {
//    case .fizz(let output):
//        print(output)
//    case .buzz(let output):
//        print(output)
//    case .fizzBuzz(let output):
//        print(output)
//    case .number(let output):
//        print(output)
//    }
//}
//
//for num in 1 ... 100 {
//    printResult(num: num)
//}
//------------------------------------------------------------------------------------------------------------------------------------------------------------


