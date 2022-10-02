//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Ксн Тлскн on 02.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var greetingUserLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingUserLabel.text = "Hello, " + userName + "!"
        
        view.setTwoGradient(colorOne: UIColor.systemBackground, colorTwo: Colors.lavander)
    }
    
}
