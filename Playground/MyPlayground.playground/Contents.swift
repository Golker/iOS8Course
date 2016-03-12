import UIKit


var originalNumber = 1

func isItPrime(num:Int) -> Bool {
    for i in 1...num {
        if num % i == 0 && i != num && i != 1 {
            return false
        }
    }
    
    return true
}

if isItPrime(originalNumber) {
    print("\(originalNumber) is a prime number!")
} else {
    print("\(originalNumber) is NOT a prime number!")
}