//
//  ManagerViewController.swift
//  Field Monitoring
//
//  Created by R.M.K. Engineering College on 01/07/17.
//  Copyright © 2017 R.M.K. Engineering College. All rights reserved.
//

import UIKit

class ManagerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet var taskTitle: UITextField!
    
    @IBOutlet var salary: UITextField!
    
    @IBOutlet var experience: UITextField!
    
    @IBOutlet var area: UITextField!
    
    @IBOutlet var skills: UITextField!
    
    @IBOutlet var jobLocation: UITextField!
    
    @IBAction func assignJob(_ sender: Any) {
    }
   
    
    
    }
