//
//  ViewController.swift
//  LoginApp
//
//  Created by Ксн Тлскн on 02.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? WelcomeViewController else { return }
        greetingVC.userName = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    @IBAction func unwindToStart(_ sender: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }

}

