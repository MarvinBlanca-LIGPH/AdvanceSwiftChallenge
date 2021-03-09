//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Mark Marvin Blanca on 3/8/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    
    var splitAmount : Float?
    var percentage : Int?
    var splitCount : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalAmountLabel.text = String(format: "%.2f", splitAmount!)
        detailsLabel.text = "Split between \(String(splitCount!)) people, with \(String(percentage!))% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
