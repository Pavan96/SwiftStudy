//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"
// Opaque types: https://dsrijan.medium.com/opaque-type-in-swift-4015aeeca1ac

// MVVM Swift: https://medium.com/@koromikoneo/applying-unit-tests-to-mvvm-with-swift-ba5a79df8a18

// Generics: https://tonny.medium.com/using-swifts-generic-decodable-and-result-in-api-504164a49c0f

// Two phase Init: https://therahulgoel.medium.com/two-phase-initialization-swift-4-2-f80fabc30a36

 // **Protocols*

//Associated types are a powerful way of making protocols generic, but they can be a bit confusing at first.


///*What is an associated type?
//  An associated type can be seen as a replacement of a specific type within a protocol definition. In other words: it’s a placeholder name of a type to use until the protocol is adopted and the exact type is specified.


//This is best explained by a simple code example. Without an associated type, the following protocol would only work for the type we define. In this case: Strings.

protocol StringsCollection {
    var count: Int { get }
    subscript(index: Int) -> String { get }
    mutating func append(_ item: String)
}

//If we want to make use of the same logic for a collection of doubles, we would need to recreate a new protocol. Associated types prevent this by putting in a placeholder item:

protocol Collection {
    associatedtype Item
    var count: Int { get }
    subscript(index: Int) -> Item { get }
    mutating func append(_ item: Item)
}

//The associated type is defined using the associatedtype keyword and tells the protocol that the subscript return type equals the append item type. This way we allow the protocol to be used with any associated type later defined. An example implementation could look as follows:

struct UppercaseStringsCollection: Collection {
    var container: [String] = []
    
    var count: Int { container.count }
    mutating func append(_ item: String) {
        guard !container.contains(item) else { return }
        container.append(item.uppercased())
    }
    
    subscript(index: Int) -> String {
        return container[index]
    }
}
