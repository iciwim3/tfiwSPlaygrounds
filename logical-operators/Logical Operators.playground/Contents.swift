//: Playground - noun: a place where people can play

import UIKit

// Logical NOT operator - unary prefix operator

let allowedEntry = false

// Same as saying: if allowedEntry != true (more characters)
if !allowedEntry {
    print("You can't get in!")
}

let enteredDoorCode = true
let passedRetinaScan = false
let iAmSKE = false

// When using the '&&' both statements have to be true
if enteredDoorCode && passedRetinaScan || iAmSKE {
    print("Welcome Grasshopper!")
} else {
    print("Access denied bro...or sis!")
}

let hasDoorKey = true
let knowsOverridePassword = false

// When using the '||' operator, you just need one to be true
if hasDoorKey || knowsOverridePassword {
    print("Welcome, come on in!")
} else {
    print("You are still stuck outside!")
}

