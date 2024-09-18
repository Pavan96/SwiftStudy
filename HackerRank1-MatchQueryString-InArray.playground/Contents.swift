import UIKit


import Foundation

/*
 * Complete the 'matchingStrings' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. STRING_ARRAY strings
 *  2. STRING_ARRAY queries
 */

func matchingStrings(strings: [String], queries: [String]) -> [Int] {
    // Write your code here
    print(strings)
    print(queries)
    var resultArray: [Int] = [Int]()
    for query in queries {
        let result = strings.filter{( $0 == query )}
        resultArray.append(result.count)
    }
    return resultArray
}


let strArr   =   ["aba", "baba", "aba", "xzxb"]
let queryArr =   ["aba", "xzxb", "ab"]

// Expected OP: [2, 1, 0] as aba is 2 times, xzxb is 1 time so on..

let result = matchingStrings(strings: strArr, queries: queryArr)
print(result)

// Enum with raw value and switch statement
enum Direction: String {
    case north = "north"
    case west  = "west"
    case east  = "east"
    case south = "south"
}

let findCharcter = Direction.south
var description = ""


switch findCharcter {
case .east:
    description += findCharcter.rawValue
    
case .north:
    description += findCharcter.rawValue
    
case .west:
    description += findCharcter.rawValue
    
    default:
      break
}

print("DescriptionValue is: \(description)")

// Write a closue for addition two values

let addClousure:((Int, Int) -> Int) =  { (a, b) in
    
    return a + b
}

print("add: \(addClousure( 3 , 2))")


let additionClosure = { (a: Int, b: Int) -> Int in
    return a + b
}

let anresult = additionClosure(5,8)
print("anresult res: \(anresult)")


// Generics
func print<T>(array: [T]) {
  print(array.map { $0 })
}

print([1, 2, 3])
