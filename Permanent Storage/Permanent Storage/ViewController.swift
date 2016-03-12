//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Thaísa on 10/03/16.
//  Copyright © 2016 LowBudget Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSUserDefaults.standardUserDefaults().setObject("Luca", forKey: "name")
        
        let name = NSUserDefaults.standardUserDefaults().objectForKey("name") as! String
        print(name)
        
        let arr = [1,2,3]
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        
        let recoveredArray = NSUserDefaults.standardUserDefaults().objectForKey("array") as! NSArray
        print(recoveredArray)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

