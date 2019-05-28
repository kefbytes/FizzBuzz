import UIKit

print("------------------ If Else ------------------")
for num in 1 ... 100 {
    if num % 3 == 0 && num % 5 == 0 {
        print("FizzBuzz")
    } else if num % 3 == 0 {
        print("Fizz")
    } else if num % 5 == 0 {
        print("Buzz")
    } else {
        print(num)
    }
}

print("-------------- Switch with tuple -------------")
for num in 1 ... 100 {
    let fizz = (num % 3 == 0)
    let buzz = (num % 5 == 0)
    switch (fizz, buzz) {
    case (true, false):
        print("Fizz")
    case (false, true):
        print("Buzz")
    case (true, true):
        print("FizzBuzz")
    case (false, false):
        print(num)
    }
}

print("--------------- Switch on Bool --------------")
for num in 1 ... 100 {
    switch true {
    case num % 3 == 0 && num % 5 != 0:
        print("Fizz")
    case num % 5 == 0 && num % 3 != 0:
        print("Buzz")
    case num % 3 == 0 && num % 5 == 0:
        print("FizzBuzz")
    default:
        print(num)
    }
}

print("------------------ A solution using higher level function ------------------")
func fizzBuzz(num: Int) -> String {
    if num % 3 == 0 && num % 5 == 0 {
        return("FizzBuzz")
    } else if num % 3 == 0 {
        return("Fizz")
    } else if num % 5 == 0 {
        return("Buzz")
    }
    return String(num)
}

func getRandomCount() -> Int {
    return Int.random(in: 4...50)
}

let resultsArray = Array(1...getRandomCount()).map {fizzBuzz(num: $0)}
print(resultsArray)

