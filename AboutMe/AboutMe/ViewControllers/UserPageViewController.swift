//
//  UserPageViewController.swift
//  AboutMe
//
//  Created by Vic on 01.12.2023.
//

import UIKit

final class UserPageViewController: UIViewController {
    
    
    @IBOutlet var userPicImageView: UIImageView!
    @IBOutlet var personNameLabel: UILabel!
    @IBOutlet var personLastNameLabel: UILabel!
    @IBOutlet var personCompanyLabel: UILabel!
    @IBOutlet var personDivisionLabel: UILabel!
    @IBOutlet var personPostionLabel: UILabel!
    
    var firstname: String!
    var lastName: String!
    var company: String!
    var division: String!
    var position: String!
    var bio: String!
    var header: String!
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let userBio = segue.destination as? BioViewController
        
        userBio?.header = "\(firstname ?? "") \(lastName ?? "")"
        userBio?.bio = "\(bio ?? "")"
        
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        userPicImageView.layer.cornerRadius = userPicImageView.frame.width / 2
        
        view.addVerticalGradientLayer(
            topColor: primaryColor,
            bottomColor: secondaryColor
        )
        
        personNameLabel.text = firstname
        personLastNameLabel.text = lastName
        personCompanyLabel.text = company
        personDivisionLabel.text = division
        personPostionLabel.text = position
    }
}
