//
//  ColorPickerVC.swift
//  Color-Wizard-Magic
//
//  Created by Sain-R Edwards Jr. on 12/10/17.
//  Copyright © 2017 Appybuildmore Apps. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate: ColorTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func colorButtonWasTapped(sender: UIButton) {
        
        if delegate != nil {
            delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
            self.navigationController?.popViewController(animated: true)
        }

    }

}
