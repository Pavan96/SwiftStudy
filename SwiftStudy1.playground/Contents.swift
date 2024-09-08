import UIKit

var greeting = "Hello, playground"

// Singleton class declaration and instance creation

class NetworkManager {
    static let shared = NetworkManager()
    
    private init() { }
}

let singletonInstance = NetworkManager.shared
print(singletonInstance);
