//
//  ViewController.swift
//  Field Monitoring
//
//  Created by R.M.K. Engineering College on 01/07/17.
//  Copyright © 2017 R.M.K. Engineering College. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    
 
    
    @IBAction func loginButton(_ sender: Any) {
        let emailValue = email.text
        let passwordValue = password.text
        
        let parameters = ["email" : emailValue, "password" : passwordValue ]
        let urlPath :String = "https://field-monitoring.herokuapp.com/users/login"
        
        Alamofire.request(urlPath, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: [:])
            .responseJSON { response in
                guard response.result.isSuccess else {
                    print("Error while fetching colors: \(String(describing: response.result.error))")
                    return
                }
                guard let responseJSON = response.result.value as? [String: String],
                let firstResult = responseJSON.first?.value else { return }
                print (responseJSON)
                print (firstResult)
                
                if firstResult == "manager" {
                    print ("Manager Success")
                    self.performSegue(withIdentifier:"managerLogin", sender: self)
                }
                else if firstResult == "employee"{
                    print ("Employee Success")
                    self.performSegue(withIdentifier:"employeeLogin", sender: self)
                }
                else{
                    let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
        
        }
    }



}
