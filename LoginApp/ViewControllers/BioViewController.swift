//
//  BioViewController.swift
//  LoginApp
//
//  Created by Ксн Тлскн on 05.10.2022.
//

import UIKit

class BioViewController: UIViewController {
    @IBOutlet var firstBioLabel: UILabel!
    @IBOutlet var secondBioLabel: UILabel!
    @IBOutlet var thirdBioLabel: UILabel!
    
    private let user = User(information: .getPerson())
    
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

        firstBioLabel.text = user.information.mainInfo
        secondBioLabel.text = user.information.workInfo
        thirdBioLabel.text = user.information.dreamInfo
        
        view.addVerticalGradientLayer(topColor: firstColor, buttomColor: secondColor)
    }

}
