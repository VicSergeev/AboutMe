//
//  TabBarViewController.swift
//  AboutMe
//
//  Created by Vic on 02.12.2023.
//

import UIKit

final class WelcomeTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance

    }

}
