//
//  TipModel.swift
//  Tpsy
//
//  Created by Darren Rambaud on 2/16/20.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import Foundation

struct TipModel {
    var b = Bill()
    
    func getAmount() -> Float {
        return b.amount!
    }
    
    mutating func setAmount(amount: Float) {
        b.amount = amount
    }
    
    func getTip() -> Float {
        return b.tip!
    }
    
    mutating func setTipPercentage(tip: Float) {
        b.tip = tip
    }
    
    func getSplit() -> Float {
        return b.split!
    }
    
    mutating func setSplit(split: Float) {
        b.split = split
    }
    
    func getAmountPaidByEachPerson() -> Float {
        let a = b.amount ?? 0.0
        let t = 1.0 + (b.tip ?? 0.2)
        let s = b.split ?? 1.0
        return a * t / s
    }
}
