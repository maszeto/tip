//
//  ViewController.swift
//  tip
//
//  Created by Matt Szeto on 7/11/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        //This will run when a user taps
        //print("Hello");
        //On tap we want to dismiss the keyboard
        //view refers to main view with view controller
        
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        //?? means if it's nbot valid change it to whatever you have onm thje ;efty side
        let bill = Double(billField.text!) ?? 0//THis is something called an optional
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        //calculate tip and total labels
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }
}

