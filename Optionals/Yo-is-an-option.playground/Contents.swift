//: Optionals: Think of it as a sealed box. There could be something in it or it could be empty!

import UIKit

var optionalNumber: Int? = 7
var number: Int = 33

// Force unwrapping
if optionalNumber != nil {
    print("optional number has a value of \(optionalNumber!)")
} else {
    // handle errors
}

// Optional binding: Take an optional value and bind it to a non-optional value
if let constantNumber = optionalNumber {
    print("Constant number has a value of \(constantNumber)")
} else {
    print("Optional Number is nil.")
}

func intPrinter() {
    guard let constantNumber = optionalNumber else { return }
    print("ConstantNumber has a value of \(constantNumber)")
}

intPrinter()

// Implicitly Unwrapped Optional
let assumedValue: Int! = 14
let implicitValue: Int = assumedValue

// Nil Coalescing & Using Ternary Operators
let optionalInt: Int? = nil
let result = optionalInt ?? 0 // This is saying set result to optionalInt if it has a value, else, set it to 0

// Optional Chaining
class ComicConAttendee {
    var admissionBadge: AdmissionBadge?
    
    init(badge: AdmissionBadge?) {
        self.admissionBadge = badge
    }
}

class AdmissionBadge {
    var numberOfDays: Int
    
    init(numberOfDays: Int) {
        self.numberOfDays = numberOfDays
    }
}

let admissionBadge = AdmissionBadge(numberOfDays: 4)
let attendee = ComicConAttendee(badge: admissionBadge)

if let daysAttendable = attendee.admissionBadge?.numberOfDays {
    print("This attendee can enter Comic Con for \(daysAttendable) days.")
} else {
    print("This person has not purchased a ticket. Please refer them to the admission window.")
}
