//
//  ViewController.swift
//  Navigation Bars
//
//  Created by Thaísa on 10/03/16.
//  Copyright © 2016 LowBudget Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var count = 0
    var hasStarted = false
    @IBOutlet var btnStartStop: UIButton!
    
    func timeChanged() {
        count++
        lbTime.text = String(count)
    }

    @IBAction func btnReset(sender: AnyObject) {
        count = 0
        lbTime.text = String(count)
    }
    
    @IBAction func btnStartStopPressed(sender: AnyObject) {
        if hasStarted {
            btnStartStop.setTitle("Play", forState: UIControlState.Normal)
            timer.invalidate()
            //timer = nil
            hasStarted = false
        } else {
            btnStartStop.setTitle("Pause", forState: UIControlState.Normal)
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("timeChanged"), userInfo: nil, repeats: true)
            hasStarted = true
        }
        
    }

    @IBOutlet var lbTime: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

