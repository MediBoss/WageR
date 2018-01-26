//
//  payroll.swift
//  WageR
//
//  Created by Assumani, Medi on 1/25/18.
//  Copyright © 2018 Assumani, Medi. All rights reserved.
//

import UIKit


class Payroll{
    
    
    var hours : Double? //property to store the user's hours worked(some user work for 20.5 or so hours(decimals))
    var payRate: Double? //property to store the user's payrate
    
    
    
    
    
            //Federal Work Study are Exempt from FICA(medicare and social security) taxes
    
    let federalIncomeRate = 0.45 // the federal amount witheld on paychecks in percent in the state of NJ ONLY
    let stateIncomeRate = 1.27 // the state amount withheld on paychecks in percent in the state of NJ ONLY
    
    
    
    
    
    
            //passing only the hours and payrate to the initializer
    init?(_ hours : Double, _ payRate: Double){
        
        
                //saffely unwaraping the optionals to avoid errors
        guard let h = self.hours else {return}
        guard let p = self.payRate else {return}
        
            self.hours  = hours
            self.payRate = payRate
        
    }
    
    

}
