//
//  ViewController.swift
//  WageR
//
//  Created by Assumani, Medi on 1/21/18.
//  Copyright © 2018 Assumani, Medi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
                //THE STARTING POINT
    
    @IBOutlet weak var payrate: UITextField! // the user's payrate in dollars
    @IBOutlet weak var hoursWorked: UITextField! // the user's hours worked
    @IBOutlet weak var textOutput: UITextView! // The text view to output the rseults
    
    
    
    //once the calculate button is pressed...
    
    
    @IBAction func calculate(_ sender: Any) {

        //Converting and safely Unwrapping (Thanks yves :) ) the hour and payrate optionals
      
        guard let convertHours = self.hoursWorked.text, let convertRate = self.payrate.text else {return}
        
        let hourW = Double(convertHours) // this statement converts and stores the hourWorked
        let payR = Double(convertRate) //this statement converts and stores the payrate
        
        
        
                //Creating an instance of the payroll class
            var studentPayCheck = Payroll(hourW!,payR!)
        
        
                    //Outputting the result
            self.textOutput.text = "Gross Income : \(studentPayCheck.getGrossIncome()) \n\nFederal Income Tax : \(studentPayCheck.getFederalTax()) \n\nState Income Tax : \(studentPayCheck.getStateTax()) \n\nNet Income : \(studentPayCheck.getNetIncome())"
        
        
    }
    

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

