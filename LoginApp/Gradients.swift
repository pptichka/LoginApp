//
//  Gradients.swift
//  LoginApp
//
//  Created by Ксн Тлскн on 02.10.2022.
//

import Foundation
import UIKit

extension UIView {
    
    public func setThreeGradient(
        colorOne: UIColor,
        colorTwo: UIColor,
        colorThree: UIColor
    ) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor, colorThree.cgColor]
        gradientLayer.locations = [0.0, 0.5, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
