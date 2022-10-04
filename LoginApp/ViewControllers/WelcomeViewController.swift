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
    
    private let firstColor = UIColor(
        red: 230.0 / 255.0,
        green: 159.0 / 255.0,
        blue: 223.0 / 255.0,
        alpha: 1.0
    )
    
    private let secondColor = UIColor(
        red: 173.0 / 255.0,
        green: 239.0 / 235.0,
        blue: 223.0 / 255.0,
        alpha: 1.0
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingUserLabel.text = "Hello, " + userName + "!"
        
        view.addVerticalGradientLayer(topColor: firstColor, buttomColor: secondColor)
    }
    
}
    extension UIView {
        func addVerticalGradientLayer(topColor: UIColor, buttomColor: UIColor) {
            let gradient = CAGradientLayer()
            gradient.frame = bounds
            gradient.colors = [topColor.cgColor, buttomColor.cgColor]
            gradient.locations = [0.0, 1.0]
            gradient.startPoint = CGPoint(x: 0, y: 0)
            gradient.endPoint = CGPoint(x: 0, y: 1)
            layer.insertSublayer(gradient, at: 0)
        }
    }
