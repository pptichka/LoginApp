//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Ксн Тлскн on 02.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var greetingUserLabel: UILabel!
    
    private let user = User(information: .getPerson())
        
    var userName: String!
    
    private let firstColor = UIColor(
        red: 230.0 / 255.0,
        green: 159.0 / 255.0,
        blue: 223.0 / 255.0,
        alpha: 1.0
    )
    
    private let secondColor = UIColor(
        red: 130.0 / 255.0,
        green: 207.0 / 235.0,
        blue: 252.0 / 255.0,
        alpha: 1.0
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingUserLabel.text = "Hello, " + user.information.name + "!"
        view.addVerticalGradientLayer(
            topColor: secondColor,
            buttomColor: firstColor
        )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tapBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tapBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let navigationCV = viewController as? UINavigationController {
                guard let aboutMyselfVC = navigationCV.topViewController as? AboutMyselfViewController else { return }
                aboutMyselfVC.view.addVerticalGradientLayer(
                    topColor: secondColor,
                    buttomColor: firstColor
                )
            } else if let aboutMyHomeVC = viewController as? AboutMyHomeViewController {
                aboutMyHomeVC.view.addVerticalGradientLayer(
                    topColor: secondColor,
                    buttomColor: firstColor
                )
            } else if let aboutMyLife = viewController as? AboutMyLifeViewController {
                aboutMyLife.view.addVerticalGradientLayer(
                    topColor: secondColor,
                    buttomColor: firstColor
                )
            }
        }
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
