//
//  AboutMyselfViewController.swift
//  LoginApp
//
//  Created by Ксн Тлскн on 05.10.2022.
//

import UIKit

class AboutMyselfViewController: UIViewController {

    @IBOutlet var nameLAbel: UILabel!
    @IBOutlet var infoLabel: UILabel!
    
    private let info = User(information: .getPerson())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLAbel.text = info.information.name
        infoLabel.text = info.information.post
    }
}
