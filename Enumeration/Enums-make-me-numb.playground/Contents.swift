//: Enumerations - defines a common type for a group of related values and enables you to with those values in a type-safe way within your code.

import UIKit

enum NameOfEnum {
    case caseOne
    case caseTwo
    case caseThree
}

let enumeration: NameOfEnum = .caseThree

enum BarCode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarCode: BarCode = .upc(8, 85909, 51226, 3)
productBarCode = .qrCode("akjsfghkajshfghjrjkyhsagsf")

switch productBarCode {
case let .upc(numberSystem, manufacturer, productCode, check):
        print("UPC: \(numberSystem), \(manufacturer), \(productCode), \(check)")
case let .qrCode(productCode):
        print("QR CODE: \(productCode)")
}

enum JediMaster: String {
    case yoda = "Yoda"
    case maceWindu = "Mace Windu"
    case quiGonJinn = "Qui-Gon Jinn"
    case obiWanKenobi = "Obi-Wan Kenobi"
    case lukeSkywalker = "Luke Skywalker"
}

print(JediMaster.obiWanKenobi.rawValue)

enum SwitchStatus {
    case on
    case off
}

var switchStatus: SwitchStatus = .on

func toggleSwitchStatus(status: SwitchStatus) -> SwitchStatus {
    if status == .off {
        return .on
    } else {
        return .off
    }
}

toggleSwitchStatus(status: switchStatus)

// Implicitly Assigned Raw Values
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto
}

print(Planet.mars.rawValue)

// Initializing from a Raw Value
let possiblePlanet = Planet(rawValue: 7)
if let realPlanet = possiblePlanet {
    print(realPlanet)
} else {
    print("The possible planet field is empty!")
}
