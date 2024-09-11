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

