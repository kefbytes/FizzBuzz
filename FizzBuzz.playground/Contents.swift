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

print("------------------ Switch ------------------")
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
