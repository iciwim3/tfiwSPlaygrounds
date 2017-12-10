//
//  ColorTransferDelegate.swift
//  Color-Wizard-Magic
//
//  Created by Sain-R Edwards Jr. on 12/10/17.
//  Copyright © 2017 Appybuildmore Apps. All rights reserved.
//

import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
}
