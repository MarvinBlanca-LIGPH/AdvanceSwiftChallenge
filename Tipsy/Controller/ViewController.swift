//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var splitCountLabel: UILabel!
    
    var tipBrain = TipBrain()
    var percentage = 0.1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func stepperClicked(_ sender: UIStepper) {
        splitCountLabel.text = String(Int(sender.value))
    }
    @IBAction func percentButtonClicked(_ sender: UIButton) {
        updateUI()
        sender.isSelected = true
        
        let selectedPercentage = Double(sender.currentTitle!.dropLast()) ?? 0.0
        percentage = selectedPercentage / 100
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let amount = Double(amountTextField.text!) ?? 100.00
        let split = Int(splitCountLabel.text!) ?? 2
        
        tipBrain.calculateTip(amount: amount, percent: percentage, splitCount: split)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }
    
    func updateUI() {
        zeroButton.isSelected = false
        tenButton.isSelected = false
        twentyButton.isSelected = false
    }
    
}

