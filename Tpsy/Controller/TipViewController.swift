//
//  ViewController.swift
//  Tpsy
//
//  Created by Darren Ramabud on 02/16/2020.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {

    @IBOutlet weak var total: UITextField!
    
    @IBOutlet weak var zeroPercent: UIButton!
    
    @IBOutlet weak var tenPercent: UIButton!
    
    @IBOutlet weak var twentyPercent: UIButton!
    
    @IBOutlet weak var splitBy: UILabel!

    @IBAction func tipUpdated(_ sender: UIButton) {
        var currentTip: Float = 0.1
        
        switch(sender.currentTitle!) {
        case "0%":
            zeroPercent.isSelected = true
            tenPercent.isSelected = false
            twentyPercent.isSelected = false
            currentTip = 0.0
        case "10%":
            zeroPercent.isSelected = false
            tenPercent.isSelected = true
            twentyPercent.isSelected = false
            currentTip = 0.1
        case "20%":
            zeroPercent.isSelected = false
            tenPercent.isSelected = false
            twentyPercent.isSelected = true
            currentTip = 0.2
        default:
            return // no-operation
        }
        
        print(currentTip)
    }
    
    @IBAction func splitBy(_ sender: UIStepper) {
    }
    
    @IBAction func calculate(_ sender: UIButton) {
    }
}

