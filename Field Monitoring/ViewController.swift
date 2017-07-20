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
        
        let parameters = ["email" : "sample@mail.com", "password" : "sample" ]
        let urlPath :String = "https://field-monitoring.herokuapp.com/users/login"
        
        Alamofire.request(urlPath, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: [:])
            .responseJSON { response in
                guard response.result.isSuccess else {
                    print("Error while fetching colors: \(String(describing: response.result.error))")
                    return
                }
                guard let responseJSON = response.result.value as? [String: Any],
                let firstResult = responseJSON.first?.value else { return }
                print (responseJSON)
                print (firstResult)
            
                
        }
    }



}
