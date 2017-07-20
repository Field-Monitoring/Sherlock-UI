//
//  ManagerViewController.swift
//  Field Monitoring
//
//  Created by R.M.K. Engineering College on 01/07/17.
//  Copyright © 2017 R.M.K. Engineering College. All rights reserved.
//

import UIKit
import Alamofire

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

    @IBOutlet var skills: UITextField!
    
    @IBOutlet var experience: UITextField!

    @IBOutlet var salary: UITextField!
    
    @IBOutlet var jobLocation: UITextField!
    
    @IBOutlet weak var latit: UILabel!
    
    @IBOutlet weak var longi: UILabel!
    
    @IBAction func assignJob(_ sender: Any) {
        
//        let jobTitleValue = taskTitle.text
//        let skillValue = skills.text
//        let experienceValue = experience.text
//        let salaryValue = salary.text
//        let jobLoc = jobLocation.text
//        let urlPath :String = "https://field-monitoring.herokuapp.com/users/"
//        let parametersValue = ["jobTitle" : jobTitleValue, "salary" : salaryValue, "experience" : experienceValue, "location" : jobLoc, "skills" : skillValue]
        
        self.performSegue(withIdentifier:"mapSegue", sender: self)
        
//        Alamofire.request(urlPath, method: .post, parameters: parametersValue, encoding: JSONEncoding.default, headers: [:])
//            .responseJSON { response in
//                guard response.result.isSuccess else {
//                    print("Error while fetching colors: \(String(describing: response.result.error))")
//                    return
//                }
//                guard let responseJSON = response.result.value as? [String: String],
//                let status = responseJSON["message"],
//                let latitiude = responseJSON["latitude"],
//                let longitude = responseJSON["longitude"] else { return }
//                
//                self.latit.text = latitiude
//                self.longi.text = longitude
//                
//                if (status == "success"){
//                    self.performSegue(withIdentifier:"mapSegue", sender: self)
//                }
//                
//        }
//        
//        
//    }
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let nextViewController = segue as! MapViewController
//        nextViewController.lat = latit.text!
//        nextViewController.long = longi.text!
//    }
    
    }
}
   

