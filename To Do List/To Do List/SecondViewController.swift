//
//  SecondViewController.swift
//  To Do List
//
//  Created by Thaísa on 10/03/16.
//  Copyright © 2016 LowBudget Development. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var textfield: UITextField!
    var defaults = NSUserDefaults.standardUserDefaults()
    
    @IBAction func saveButtonPressed(sender: AnyObject) {
        if textfield.text != "" {
            var arr = (defaults.arrayForKey("notes")!)
            arr.append(textfield.text!)
            defaults.setObject(arr, forKey: "notes")
            textfield.text = ""
            print(defaults.objectForKey("notes"))
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
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textfield.resignFirstResponder()
        return true
    }


}

