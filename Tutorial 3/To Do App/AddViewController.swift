//
//  AddViewController.swift
//  To Do App
//
//  Created by Phil Hudson on 22/04/2016.
//  Copyright © 2016 Purple Goldfish. All rights reserved.
//

import Foundation
import UIKit

class AddViewController : UIViewController {
    
    var delegate: ToDoDataProtocol? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet weak var dataTextField: UITextField!
    
    @IBAction func doneButtonPressed(sender: AnyObject) {
        
//        print("data in textfield: \(dataTextField.text!)")
        
        self.delegate?.getData(dataTextField.text!)
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
}