//
//  ViewController.swift
//  Cat Years
//
//  Created by Luca on 07/03/16.
//  Copyright © 2016 LowBudget Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tfAge: UITextField!
    @IBOutlet var lblResult: UILabel!
    
    @IBAction func btnCalculateAge(sender: AnyObject) {
        if tfAge.text != "" {
            var humanAge = String(Int(tfAge.text!)! * 7)
            lblResult.text = "Result: \(humanAge) human years!"
        } else {
            lblResult.text = "Insert your cat's age, champs!"
        }
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

