//
//  FirstViewController.swift
//  To Do List
//
//  Created by Thaísa on 10/03/16.
//  Copyright © 2016 LowBudget Development. All rights reserved.
//

import UIKit

var toDoList = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var table: UITableView!
    var defaults = NSUserDefaults.standardUserDefaults()
    var arr = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if defaults.objectForKey("notes") == nil {
            defaults.setObject([String](), forKey: "notes")
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        if defaults.objectForKey("notes") != nil {
            arr = (defaults.objectForKey("notes") as! [String])
            table.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell")

        cell.textLabel?.text = String(arr[indexPath.row])
        
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            arr.removeAtIndex(indexPath.row)
            defaults.setObject(arr, forKey: "notes")
            
            table.reloadData()
        }
    }


}

