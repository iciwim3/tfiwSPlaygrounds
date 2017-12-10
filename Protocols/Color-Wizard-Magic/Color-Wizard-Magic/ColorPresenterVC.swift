//
//  ColorPresenterVC.swift
//  Color-Wizard-Magic
//
//  Created by Sain-R Edwards Jr. on 12/10/17.
//  Copyright © 2017 Appybuildmore Apps. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {

    @IBOutlet weak var colorNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLabel.text = colorName
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Storyboard.colorPickerSegue {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else
            { return }
            colorPickerVC.delegate = self
        }
    }
    
    struct Storyboard {
        static let colorPickerSegue = "presentColorPickerVC"
    }

}

