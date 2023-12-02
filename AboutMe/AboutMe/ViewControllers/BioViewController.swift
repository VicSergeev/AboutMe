//
//  BioViewController.swift
//  AboutMe
//
//  Created by Vic on 02.12.2023.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet var userBioHeaderLabel: UILabel!
    @IBOutlet var userBioContentLabel: UILabel!
    
    
    
    private let primaryColor = UIColor(
        red: 200/255,
        green: 119/255,
        blue: 128/255,
        alpha: 1
    )
    
    private let secondaryColor = UIColor(
        red: 109/255,
        green: 145/255,
        blue: 230/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(
            topColor: primaryColor,
            bottomColor: secondaryColor
        )
    }
}
