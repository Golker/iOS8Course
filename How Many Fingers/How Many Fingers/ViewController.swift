//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Thaísa on 08/03/16.
//  Copyright © 2016 LowBudget Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tfUserGuess: UITextField!
    
    @IBAction func btnGuess(sender: AnyObject) {
        var rand = arc4random_uniform(6)
        
        if tfUserGuess.text != "" && Int(tfUserGuess.text!)! == Int(rand) {
            lblResult.text = "That's correct!"
        } else {
            lblResult.text = "Wrong! It was \(rand)."
        }
        
        print(tfUserGuess.text)
    }
    
    @IBOutlet var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

