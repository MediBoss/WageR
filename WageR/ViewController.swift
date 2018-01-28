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

            //Converting and Unwrapping the hour and payrate optionals
        guard let hoursConverted : Double = Double(self.hoursWorked.text!) else {return}
        guard let payrateConverted : Double = Double(self.payrate.text!) else {return}
        
        
                //Creating an instance of the payroll class
            var studentPayCheck = Payroll(hoursConverted,payrateConverted)
        
        
        
        
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

