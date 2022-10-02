//
//  ViewController.swift
//  LoginApp
//
//  Created by Ксн Тлскн on 02.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: Data
    
    let correctUserName = "user"
    let correctPassword = "password"
    let emptyText = ""
    
    // MARK: Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? WelcomeViewController else { return }
        greetingVC.userName = userNameTF.text
        
        checkDatValidtion()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    private func showAlert() {
        let alert = UIAlertController(title: "Login Error!", message: "Username or Password not found.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try again", style: .cancel))
        
        present(alert, animated: true)
    }
    
    private func checkDatValidtion() {
        if userNameTF.text != correctUserName || passwordTF.text != correctPassword {
            showAlert()
            passwordTF.text = emptyText
        }
    }
   
    
    // MARK: IBActions
    
    @IBAction func unwindToStart(_ sender: UIStoryboardSegue) {
        userNameTF.text = emptyText
        passwordTF.text = emptyText
    }
    
    @IBAction func userNameShowHelp() {
        let alert = UIAlertController(title: "Help", message: "Username is \(correctUserName)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        
        present(alert, animated: true)
    }
    
    @IBAction func passwordShowHelp() {
        let alert = UIAlertController(title: "Help", message: "Password is \(correctPassword).", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        
        present(alert, animated: true)
    }
    
}

