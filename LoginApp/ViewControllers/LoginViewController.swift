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
    
    private let correctUserName = "user"
    private let correctPassword = "password"
    
    // MARK: Methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? WelcomeViewController else { return }
        
        greetingVC.userName = correctUserName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: IBActions
    
    @IBAction func unwindToStart(_ sender: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func userNameShowHelp() {
        let alert = UIAlertController(
            title: "Help",
            message: "Username is \(correctUserName)",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        
        present(alert, animated: true)
    }
    
    // MARK: Public Methods
    
    private func showAlert() {
        let alert = UIAlertController(
            title: "Login Error!",
            message: "Username or Password not found.",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "Try again", style: .cancel))
        
        present(alert, animated: true)
    }
    
    private func checkDatValidtion() {
        if userNameTF.text != correctUserName || passwordTF.text != correctPassword {
            showAlert()
            passwordTF.text = ""
        }
    }
    
}

