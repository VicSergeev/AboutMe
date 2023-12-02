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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeTabBarVC = segue.destination as? UITabBarController
        
        welcomeTabBarVC?.viewControllers?.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = userLogin
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
