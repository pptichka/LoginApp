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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstBioLabel.text = user.information.mainInfo
        secondBioLabel.text = user.information.workInfo
        thirdBioLabel.text = user.information.dreamInfo
    }

}
