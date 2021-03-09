//
//  TipBrain.swift
//  Tipsy
//
//  Created by Mark Marvin Blanca on 3/5/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct TipBrain {
    var tip: Tip?
    
    func getSplitAmount() -> Float {
        return tip?.amount ?? 0.0
    }
    
    func getPercentage() -> Int {
        let convertToInt = (tip?.percent ?? 0.1) * 100
        return Int(convertToInt)
    }
    
    func getSplitCount() -> Int {
        return tip?.splitCount ?? 2
    }
    
    func getSelectedPercentage(_ selectedPercentage: Double) -> Double {
        return selectedPercentage / 100
    }
    
    mutating func  calculateTip(amount: Float, percent: Double, splitCount: Int) {
        let tipAmount = amount * Float(percent)
        let splitAmount = (amount + tipAmount) / Float(splitCount)
        
        
        tip = Tip(amount: splitAmount, percent: percent, splitCount: splitCount)
    }
}
