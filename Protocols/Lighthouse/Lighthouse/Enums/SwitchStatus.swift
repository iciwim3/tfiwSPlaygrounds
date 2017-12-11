//
//  SwitchStatus.swift
//  Lighthouse
//
//  Created by Sain-R Edwards Jr. on 12/10/17.
//  Copyright © 2017 Appybuildmore Apps. All rights reserved.
//

import UIKit

enum SwitchStatus: Toggleable {
    case on, off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
