//
//  payroll.swift
//  WageR
//
//  Created by Assumani, Medi on 1/25/18.
//  Copyright © 2018 Assumani, Medi. All rights reserved.
//

import UIKit


struct Payroll{
    
    
    var hours : Double //property to store the user's hours worked(some user work for 20.5 or so hours(decimals))
    var payRate: Double //property to store the user's payrate
    
            //Federal Work Study are Exempt from FICA(medicare and social security) taxes
    
    /// the federal amount witheld on paychecks in percentage in the state of NJ ONLY
    let federalIncomeRate = 0.45
    
    /// the state amount withheld on paychecks in percent in the state of NJ ONLY (tax rate varies by states)
    let stateIncomeRate = 1.27
    
    
    
    //passing only the hours and payrate to the initializer
    init(_ hours : Double,_ payRate: Double){
        
        self.hours  = hours
        self.payRate = payRate
        
    }
    
    
    ///Function to find the user's gross income
    func getGrossIncome() -> Double{
        
        return (self.hours * self.payRate)
    }
    

    ///Function to find how much federal tax will be withheld from
    ///the paycheck New Jersey Based Students only
    func getFederalTax() -> Double{
    
        return (self.getGrossIncome() * self.federalIncomeRate) / 100
    }
    
    
    ///Function to find how much state tax a student will be withheld from the paycheck
    func getStateTax() -> Double{
        
        return (self.getGrossIncome() * self.stateIncomeRate) / 100
    }
    
    
    ///Function to find the netpay (how much money the student is putting in his/her pocket)
    func getNetIncome() -> Double{
        
        var totalTax : Double
        
        // the total amount of taxes ,in dollars, to be deducted from paycheck
            totalTax = self.getStateTax() + self.getFederalTax()
        
        
                return (self.getGrossIncome() - totalTax)//calculates the net pay
    }
}
