//
//  HomeViewController.swift
//  To Do App
//
//  Created by Phil Hudson on 22/04/2016.
//  Copyright © 2016 Purple Goldfish. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        
        return cell
    }
    
    @IBAction func addButtonPressed(sender: AnyObject) {
        
        print("add")
        
        self.performSegueWithIdentifier("AddSegue", sender: self)
    
    }
    
}