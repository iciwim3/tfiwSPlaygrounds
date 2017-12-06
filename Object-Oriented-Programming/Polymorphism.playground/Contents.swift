//: Polymorphism: One form of an object but using them in different ways. Using the same parent class.

import UIKit

class Shape {
    var area: Double?
    
    func calculateArea(valA: Double, valB: Double) {
        
    }
}

class Triangle: Shape {
    override func calculateArea(valA: Double, valB: Double) {
        area = (valA * valB) / 2
    }
}

class Rectangle: Shape {
    override func calculateArea(valA: Double, valB: Double) {
        area = valA * valB
    }
}
