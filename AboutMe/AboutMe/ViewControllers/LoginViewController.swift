//
//  ViewController.swift
//  AboutMe
//
//  Created by Vic on 30.11.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userLoginTextField: UITextField!
    @IBOutlet var userPasswordTextField: UITextField!
    
    private let userLogin = "User"
    private let userPassword = "1111"
    
    let userData = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeTabBarVC = segue.destination as? WelcomeTabBarViewController
        
        welcomeTabBarVC?.viewControllers?.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = userData.name
            } else if let navigationVC = viewController as? UINavigationController {
                let userPageVC = navigationVC.topViewController as? UserPageViewController
                userPageVC?.firstname = userData.personData.firstName
                userPageVC?.lastName = userData.personData.lastName
                userPageVC?.company = userData.personData.company
                userPageVC?.division = userData.personData.division
                userPageVC?.position = userData.personData.position
                userPageVC?.bio = userData.personData.bio
                }
            }
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userLoginTextField.text == userLogin, userPasswordTextField.text == userPassword else {
            showAlert(
                withTitle: "Login or password is incorrect",
                andMessage: "Please, enter correct login and password")
            return false
        }
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userLoginTextField.text = userLogin
        userPasswordTextField.text = userPassword
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(withTitle: "Oops!", andMessage: "Your name is \(userLogin)")
            : showAlert(withTitle: "Oops!", andMessage: "Your password is \(userPassword)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userLoginTextField.text = ""
        userPasswordTextField.text = ""
    }

    private func showAlert(withTitle title: String, andMessage message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
