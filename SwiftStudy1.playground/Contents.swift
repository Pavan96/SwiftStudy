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

class NameC {
    let stringName = "C"
    var age: Int?
}

struct NameAS {
    var name = "A"
    var age: Int = 68
}

let cName = NameC()
cName.age = 25

var aName = NameAS(age: 23)
aName.age = 67

print(aName.age)
print(cName.age)

// Protcols
protocol OsNameProtocol {
    var name: String { get }
    func osVersionNumber()
}

struct Windows: OsNameProtocol {
    let name: String
    func osVersionNumber() { }
}

let aWindows = Windows(name: "Win11")
print("Windows: \(aWindows.name)")


class Macbook: OsNameProtocol {
    var version: String?
    var tempName: String
    
    var name: String {
        return "mac" + (version ?? "1.0") + tempName
    }
    
    init(aVersion: String, aTempName: String) {
        self.version = aVersion
        self.tempName = aTempName
    }
    
    func osVersionNumber() {
    }
}

let aMac = Macbook(aVersion: "15.0", aTempName: " Sequoia")
let detailsOS = aMac.name
print("DetailsOSNew Val : \(detailsOS)")





