//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//These are custom classes, structures, and enumerations that can work with any type, in a similar way to Array and Dictionary.


enum StackError: Error {
    case Empty(message: String)
}

public struct Stack<T> {
    var array: [T] = []
    
    init(capacity: Int) {
        array.reserveCapacity(capacity)
    }
    
    public mutating func push(element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public func peek() throws -> T {
        guard !isEmpty(), let lastElement = array.last else {
            throw StackError.Empty(message: "Array is empty")
        }
        return lastElement
    }
    
    func isEmpty() -> Bool {
        return array.isEmpty
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        let elements = array.map{ "\($0)" }.joined(separator: "\n")
        return elements
    }
}

var stack = Stack<Int>(capacity: 10)
stack.push(element: 1)
stack.push(element: 2)
print(stack)

var strigStack = Stack<String>(capacity: 10)
strigStack.push(element: "aaina")
print(strigStack)
