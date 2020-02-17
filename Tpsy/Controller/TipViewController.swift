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
    
    var tipModel = TipModel()
    
    override func viewDidLoad() {
        tipModel.setSplit(split: 1.0)
    }

    @IBAction func tipUpdated(_ sender: UIButton) {
        
        switch(sender.currentTitle!) {
        case "0%":
            zeroPercent.isSelected = true
            tenPercent.isSelected = false
            twentyPercent.isSelected = false
            tipModel.setTipPercentage(tip: 0.0)
        case "10%":
            zeroPercent.isSelected = false
            tenPercent.isSelected = true
            twentyPercent.isSelected = false
            tipModel.setTipPercentage(tip: 0.1)
        case "20%":
            zeroPercent.isSelected = false
            tenPercent.isSelected = false
            twentyPercent.isSelected = true
            tipModel.setTipPercentage(tip: 0.2)
        default:
            return // no-operation
        }
        
        // to force close the keyboard after user taps on tip percentages
        total.endEditing(true)
    }
    
    
    /// Couples the UIStepper element with the *splitBy* UILabel. As the stepper element is increased or
    /// decreased, the current value held by the stepper is cascaded to the *splitBy* label.
    ///
    /// Current min value is 2 while the max value is 25
    /// - Parameter sender: The UIStepper element defined for this view controller
    @IBAction func splitBy(_ sender: UIStepper) {
        splitBy.text = String(format: "%1.f", sender.value)
        tipModel.setSplit(split: Float(sender.value))
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        tipModel.setAmount(amount: Float(total.text ?? "0.0")!)
        self.performSegue(withIdentifier: "displayTotal", sender: self)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "displayTotal" {
            let rvc = segue.destination as! ResultViewController
            rvc.tipModel = tipModel
        }
    }
}

