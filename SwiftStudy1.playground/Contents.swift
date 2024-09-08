import UIKit

var greeting = "Hello, playground"

// Singleton class declaration and instance creation

class NetworkManager {
    static let shared = NetworkManager()
    
    private init() { }
}

let singletonInstance = NetworkManager.shared
print(singletonInstance);


// Write program to find largest number from dictionary
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]


func largestNumber() {
    var largestNum = 0
    for (_, numbers) in interestingNumbers {
        for number in numbers {
            if(number > largestNum) {
               largestNum = number
            }
        }
    }
    print("Largest: \(largestNum)")
}

largestNumber()
