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
    @IBOutlet weak var total: UILabel!
    
    @IBOutlet weak var environment: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
