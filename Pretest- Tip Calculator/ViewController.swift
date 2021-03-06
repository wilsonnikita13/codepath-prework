//
//  ViewController.swift
//  Pretest- Tip Calculator
//
//  Created by Nikita Wilson on 1/21/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var numOfPeopleTextField: UITextField!
    @IBOutlet weak var ButtonControl: UIButton!
    
    @IBOutlet weak var totalPerPerson: UITextField!
    @IBOutlet weak var NumPeopleText: UILabel!
    // Variable that holds the total bill value
    var totalCalculated: Double = 0.0;
    
    override func viewDidLoad() {
        billAmountTextField.becomeFirstResponder()

        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        totalCalculated = total;
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
        
    
}


        
    

