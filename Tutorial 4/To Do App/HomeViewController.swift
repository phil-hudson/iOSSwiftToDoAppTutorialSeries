//
//  HomeViewController.swift
//  To Do App
//
//  Created by Phil Hudson on 22/04/2016.
//  Copyright © 2016 Purple Goldfish. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController : UIViewController, UITableViewDelegate, UITableViewDataSource, ToDoDataProtocol {
    
    @IBOutlet weak var tableView: UITableView!
    
    var tableData: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = self.tableData[indexPath.row]
        
        return cell
    }
    
    @IBAction func addButtonPressed(sender: AnyObject) {
        
        print("add")
        
        self.performSegueWithIdentifier("AddSegue", sender: self)
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "AddSegue" {
            
            let vc = segue.destinationViewController as! AddViewController
            vc.delegate = self
            
        }
    }
    
    func getData(data: String) {
        print(data)
        self.tableData.append(data)
        self.tableView.reloadData()
    }
    
}