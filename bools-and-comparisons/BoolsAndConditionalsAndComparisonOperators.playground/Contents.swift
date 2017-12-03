//: Playground - noun: a place where people can play

import UIKit

var amITheWealthiestManInTheWorld: Bool = false

if true == false || true == true {
    print("WTFish?!")
}

var hasDataFinishedDownloading: Bool = false

if !hasDataFinishedDownloading {
    print("Loading data...")
}

// Equal to: ==
// Not equal to: !=
// Greater than: >
// Less than: <
// Greater than or equal to: >=
// Less than or equal to: <=

var bankBalance = 600
var itemToBuy = 700

if bankBalance >= itemToBuy {
    print("purchased item!")
}

if itemToBuy > bankBalance {
    print("You have to get yo' paper up!")
}

if itemToBuy == bankBalance {
    print("Your balance is a big GOOSE EGG!")
}

var amIAtZero = itemToBuy == bankBalance // This is a Boolean

var bookTitle1 = "The Phantom Toll Booth"
var bookTitle2 = "The Pantom Toll Booth"

// useyourloaf.com/blog/swift-string-cheat-sheet/
let indexStartOfBookTitle1Text =  bookTitle1.index(bookTitle1.startIndex, offsetBy: 0)
let indexEndOfBookTitle1Text = bookTitle1.index(bookTitle1.endIndex, offsetBy: 0)
let substring1 = bookTitle1[indexStartOfBookTitle1Text..<indexEndOfBookTitle1Text]

let indexStartOfBookTitle2Text =  bookTitle2.index(bookTitle2.startIndex, offsetBy: 0)
let indexEndOfBookTitle2Text = bookTitle2.index(bookTitle2.endIndex, offsetBy: 0)
let substring2 = bookTitle2[indexStartOfBookTitle2Text..<indexEndOfBookTitle2Text]

if substring1 != substring2 {
    print("Need to fix spelling before printing.")
} else if substring2.count > substring1.count {
    print("Find a new title for the book.")
} else {
    print("The book can be printed!")
}




