//
//  ViewController.swift
//  Example App
//
//  Created by Thaísa on 07/03/16.
//  Copyright © 2016 LowBudget Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblWelcome: UILabel!
    @IBOutlet var tbxName: UITextField!
    
    @IBAction func btnSendPressed(sender: AnyObject) {
        lblWelcome.text = "Does it work now?"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("Hello, pageants!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

