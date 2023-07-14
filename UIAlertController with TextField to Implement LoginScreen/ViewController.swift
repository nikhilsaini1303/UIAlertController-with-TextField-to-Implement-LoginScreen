//
//  ViewController.swift
//  UIAlertController with TextField to Implement LoginScreen
//
//  Created by Nikhil Saini on 25/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userNameText: UILabel!
    
    @IBOutlet weak var passwordText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButton(_ sender: Any) {
        
        let loginAlert = UIAlertController(title: "Login", message: "Enter Username And Password", preferredStyle: .alert)
        loginAlert.addTextField{ (textfield) in
            textfield.placeholder = "Enter Username"
        }
        
        loginAlert.addTextField{ (textfield) in
            textfield.placeholder = "Enter Password"
            textfield.isSecureTextEntry = true
        }
        
        let okAction = UIAlertAction(title: "Login", style: .default) { action in
            
            self.userNameText.text = "Username is : \(loginAlert.textFields![0].text!)"
            self.passwordText.text = "Password is : \(loginAlert.textFields![1].text!)"
            
        }
        
        let cancleAction = UIAlertAction(title: "Ignore", style: .cancel) { action in
            print("Your are cancel an opertaion")
        }
        
        loginAlert.addAction(okAction)
        loginAlert.addAction(cancleAction)
        
        present(loginAlert, animated: true, completion: nil)
        
        
    }
    
}

