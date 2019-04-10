//
//  ViewController.swift
//  Salary Sacrifice
//
//  Created by Danielle Starr on 3/4/19.
//  Copyright © 2019 Danielle Starr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var grossWeeklyEarningsInput: UITextField!

    @IBOutlet weak var totalWorkplaceDeductionsInput: UITextField!
    
    @IBOutlet weak var taxableIncomeLabel: UILabel!
    @IBOutlet weak var taxToPayLabel: UILabel!
    @IBOutlet weak var netFortnightlyIncomeLabel: UILabel!
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let grossWeeklySalary = (grossWeeklyEarningsInput.text! as NSString).intValue
        let workplaceDedictions = (totalWorkplaceDeductionsInput.text! as NSString).intValue
        taxableIncomeLabel.text = "$\(grossWeeklySalary * 26)"
        netFortnightlyIncomeLabel.text = "$\(grossWeeklySalary  - (workplaceDedictions / 26))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//    func taxableIncomeCalc() {
//        annualSalaryInput.text = "1"
//            let annualSalaryInt = (annualSalaryInput.text)
//
//            print(annualSalaryInt)
//
//    }
    
}


