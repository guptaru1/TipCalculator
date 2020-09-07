//
//  ViewController.swift
//  tip
//
//  Created by Ruchika Gupta on 9/5/20.
//  Copyright © 2020 GroupAlert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
        self.billField.becomeFirstResponder()
    }

    // Optionally initialize the property to a desired starting value
 
    
   
    
    override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
    }
    
    func showTipViewAnimated(show: Bool) {
       UIView.animate(withDuration:0.8, delay: 0.0,
        // Autoreverse runs the animation backwards and Repeat cycles the animation indefinitely.
        options: [.autoreverse,.repeat], animations: { () -> Void in
           self.billField.transform = CGAffineTransform(translationX: 0, y: 10)
        }, completion: nil)
    }

   
    
    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        ///Dismiss the keyborard
        
        view.endEditing(true)
        self.showTipViewAnimated(show: true)
    }
    
    
    
    

    
    
    @IBAction func calculateTip(_
        sender: Any) {
        
         let tipPercentages = [0.15,0.18,0.2]
        //Gets the bill amount
        //ERROR Checking
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
       
        //Updates the tips you have
        
         
        
        totalLabel.text = String(format: "$%.2f",total )
         tipLabel.text = String(format: "$%.2f",tip )
        
    }
}

