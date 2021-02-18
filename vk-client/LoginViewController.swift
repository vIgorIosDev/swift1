//
//  ViewController.swift
//  vk-client
//
//  Created by i.vasilyev on 11.02.2021.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: properties
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var buttonLogin: UIButton!
    
    //MARK: lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonLogin.backgroundColor = .clear
        buttonLogin.layer.cornerRadius = 5
        buttonLogin.layer.borderWidth = 1
       // buttonLogin.layer.backgroundColor = UIColor.black.cgColor
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        print("login = \(loginTextField.text ?? "")")
        print("password = \(passwordTextField.text ?? "")")
    }
    
    
}

