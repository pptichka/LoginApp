//
//  ViewController.swift
//  LoginApp
//
//  Created by Ксн Тлскн on 02.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.userName = userNameTF.text
    }

}

