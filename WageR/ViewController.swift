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
    
    //once the calculate button is pressed...
    
    
    @IBAction func calculate(_ sender: UIButton) {
        
        
        
        guard let h = self.hoursWorked else {return}
        guard let p = self.payrate else {return}
        
            //let studentPaycheck = Payroll(h,p)
        
        
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

