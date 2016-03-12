//
//  ViewController.swift
//  Is It Prime
//
//  Created by Thaísa on 10/03/16.
//  Copyright © 2016 LowBudget Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tfNumber: UITextField!

    @IBAction func btnFindOut(sender: AnyObject) {
        let number = Int(tfNumber.text!)
        if number != nil {
            var str = ""
            if isItPrime(number!) {
                str = "\(number!) IS a prime number!"
            } else {
                str = "\(number!) is NOT a prime number!"
            }
            
            print(str)
            lblResult.text = str
        }
    }
    
    @IBOutlet var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func isItPrime(num:Int) -> Bool {
        if num == 0 || num == 1 {
            return false
        }
        
        for i in 1...num {
            if num % i == 0 && i != num && i != 1 {
                return false
            }
        }
        
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

