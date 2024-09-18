import UIKit

var greeting = "Hello, playground"

// Enum with associated value and switch statment
enum CarNames {
    case ferrari(Int, String)
    case maruti(Int,  String)
    case hona(Int, String, Int)
}

let car = CarNames.ferrari(1, "US")
var carDescription = ""

switch car {
    case .ferrari(let value, let country):
        carDescription +=  "Car base value is \(value) and country is \(country)"
    
    case .maruti(let value, let country):
        carDescription +=  "Car base value is \(value) and country is \(country)"
    
    case .hona(let value, let country, let mileage):
        carDescription +=  "Car base value is \(value) and country is \(country) and mileage \(mileage)"
}
print("CarDetails are : \(carDescription)")

// for loop

let arrayCountry = ["India", "US", "SL"]

for name in arrayCountry {
    print("Coutry: \(name)")
}

// For loop with numberic ranges
for index in 1...5 {
    print("Reange Oper: \(index)")
}

let count = arrayCountry.count

for i in 0..<count {
    print("Country index is: \(i) and name \(arrayCountry[i])");
}


enum Colors {
    case red
    case green
    case green1
}

struct Names{
    let abc: String
    var abcd: String
}

/*
 Create a function that takes an array of two numbers and checks if the square root of the first number is equal to the cube root of the second number.
 */
func checkSquareAndCube(_ array: [Int]) -> Bool {
    let cubroot = pow(Double(array[0]), 3)
    let sqroot = pow(Double(array[1]), 2)
    return  cubroot == sqroot
}
checkSquareAndCube([16, 48])

// Create a function that filters out an array to include numbers that only have a certain number of digits.
func filterDigitLength(_ arr: [Int], _ num: Int) -> [Int] {
    
    var array = [Int]()
    let result = arr.filter( { $0 <=  10})
    print("Result: \(result)");
    
    for (_, number) in arr.enumerated() {
        let strNumber = String(number)
        if  strNumber.count == String(num).count {
            array.append(number)
        }
    }
    return array
}
print("Filtered array: \(filterDigitLength([2, 7, 8, 9, 1012], 1))")

//An isogram is a word that has no duplicate letters. Create a function that takes a string and returns either true or false depending on whether or not it's an "isogram".

func isIsogram(_ str: String) -> Bool {
    var givenStr = str.lowercased()

    for character in str.lowercased() {
        givenStr = givenStr.replacingOccurrences(of: String(character), with: "", options: NSString.CompareOptions.literal, range: nil)
        
        if givenStr.lowercased().contains(character) {
            return false
        }
    }
    return true
}

func isIsogram1(_ str: String) -> Bool {
    let set = Set(str.lowercased())
    
    if str.count == String(set).count {
        return true
    }
    return false
}
isIsogram1("Algorism")
