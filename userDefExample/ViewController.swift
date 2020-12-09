//
//  ViewController.swift
//  userDefExample
//
//  Created by Nemanja Ducic on 12/8/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    let userDef = UserDefaults.standard
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    @IBAction func loginButtonTapped(_ sender: Any) {
       handleLogin()
    
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        toRegister()
    }
    func toRegister(){
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    func handleLogin(){
        if let enteredUser = usernameTextField.text {
            if userDef.object(forKey: enteredUser) != nil {
                let password = userDef.object(forKey: enteredUser) as! String
                if password == passwordTextField.text {
                    errorLabel.isHidden = true
                    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                    let vc = storyBoard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
                    vc.name = usernameTextField.text!
                    vc.modalPresentationStyle = .fullScreen
                    self.present(vc, animated: true, completion: nil)
                } else {
                    errorLabel.text = "Incorrect Password"
                    errorLabel.isHidden = false
                }
            } else {
                errorLabel.text = "Username doesn't exist"
                errorLabel.isHidden = false
            }
        }
    }
   func setup(){
    errorLabel.isHidden = true
    usernameTextField.layer.borderWidth = 3
    passwordTextField.layer.borderWidth = 3
    passwordTextField.layer.cornerRadius = 5
    usernameTextField.layer.cornerRadius = 5
    loginButton.layer.borderWidth = 3
   }
    }

