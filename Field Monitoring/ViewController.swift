//
//  ViewController.swift
//  Field Monitoring
//
//  Created by R.M.K. Engineering College on 01/07/17.
//  Copyright © 2017 R.M.K. Engineering College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    //let login_url = "https://field-monitoring.herokuapp.com/users/login"
    
    public var statusVar = false
   
    
    func seque(){
        
        
        
        let passwordValue = password.text
        let emailValue = email.text
        
        let parameters = ["email": emailValue, "password": passwordValue]
        
        guard let url = URL(string: "https://field-monitoring.herokuapp.com/users/login") else { return  }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else { return  }
        request.httpBody = httpBody
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            //if let response = response {
            // print(response)
            //}
            
            if let data = data {
                do {
//                    self.activityIndicator.hidesWhenStopped = false
                    let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                    
                    print(json)
//                    self.activityIndicator.hidesWhenStopped = true
                    if let value = json["message"]
                    {
                        if value as! String? == "success"{
                            print ("Hi")
                            self.statusVar = true
                            }
                        else{
                            let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
                            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                        }
                    }
                } catch {
                    print ("Not successful login")
//                    let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
//                    alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
//                    self.present(alert, animated: true, completion: nil)
//                    
                    //print(error)
                }
            }
            
            }.resume()
        print ("out")
//        return temp

    }
//    func seque2() -> Bool {
//        return true
//    }
    
    @IBAction func loginButton(_ sender: Any) {

//        let passwordValue = password.text
//        let emailValue = email.text
//        
//        let parameters = ["email": emailValue, "password": passwordValue]
//        
//        guard let url = URL(string: "https://field-monitoring.herokuapp.com/users/login") else { return }
//        
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//        
//        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else { return }
//        request.httpBody = httpBody
//        
//        let session = URLSession.shared
//        session.dataTask(with: request) { (data, response, error) in
//            //if let response = response {
//            // print(response)
//            //}
//            
//            if let data = data {
//                do {
//                        let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
//                    
//                        print(json)
//                    
//                        if let value = json["Status"]
//                        {
//                            if value as! String? == "Success"
//                            
                            seque()
                             if(statusVar)
                            {
                                print ("Login")
                                self.performSegue(withIdentifier:"login", sender: self)
                            }
                             else {
                                print ("Im else")
        }
                            
      
    }
}
//
//        

        
//        let json: [String: Any] = ["email": "abdul@gmail.com", "password": "abdul"]
//        
//        let jsonData = try? JSONSerialization.data(withJSONObject: json)
//        
//        // create post request
//        let url = URL(string: "https://field-monitoring.herokuapp.com/users/login")!
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        
//        // insert json data to the request
//        request.httpBody = jsonData
//        
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//            guard let data = data, error == nil else {
//                print(error?.localizedDescription ?? "No data")
//                return
//            }
//            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
//            if let responseJSON = responseJSON as? [String: Any] {
//                print(responseJSON)
//            }
//        }
//        
//        task.resume()
//        
//        
//    }
    


