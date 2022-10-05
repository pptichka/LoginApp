//
//  AboutMyHomeViewController.swift
//  LoginApp
//
//  Created by Ксн Тлскн on 05.10.2022.
//

import UIKit

class AboutMyHomeViewController: UIViewController {
    
    @IBOutlet var homeLabel: UILabel!
    @IBOutlet var catView: UIImageView!
    @IBOutlet var answerButton: UIButton!
    
    private let user = User(information: .getPerson())
    
    override func viewDidLoad() {
        homeLabel.text = user.information.catInfo
    }
    
    @IBAction func buttonDidTapped() {
        showAlert(title: "Вот это да!", message: "Завести второго кота 😉")
        
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.catView.isHidden = false
            self.answerButton.isHidden = true
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
