//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Ксн Тлскн on 02.10.2022.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var greetingUserLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingUserLabel.text = "Hello, " + userName + "!"
    }
    
    @IBAction func logOutButtonDidTapped() {
        
    }
}
