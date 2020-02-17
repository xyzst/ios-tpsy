//
//  ResultViewController.swift
//  Tpsy
//
//  A "Cocoa Touch Class"
//
//  Created by Darren Rambaud on 2/16/20.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var tipModel: TipModel?
    
    @IBOutlet weak var total: UILabel!
    
    @IBOutlet weak var environment: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(tipModel!.getAmountPaidByEachPerson())
        
        total.text = String(format: "%.2f", tipModel!.getAmountPaidByEachPerson())
        environment.text = "Split between \(String(format: "%1.f", tipModel!.getSplit())) people, with a \(tipModel!.getTip() * 100)% tip."
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
