//
//  AboutMyLifeViewController.swift
//  LoginApp
//
//  Created by Ксн Тлскн on 05.10.2022.
//

import UIKit

class AboutMyLifeViewController: UIViewController {

    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var thirdLabel: UILabel!
    @IBOutlet var fourthLAbel: UILabel!
    
    private let user = User(information: .getPerson())
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstLabel.text = user.information.hobby
        secondLabel.text = user.information.youtube
        thirdLabel.text = user.information.gitHub
        fourthLAbel.text = user.information.telegram
    }
    
}
