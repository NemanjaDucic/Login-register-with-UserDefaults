//
//  RegisterViewController.swift
//  userDefExample
//
//  Created by Nemanja Ducic on 12/8/20.
//

import Foundation
import UIKit
class RegisterViewController:UIViewController{
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var label: UILabel!
    let userDef = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func registerButtonTapped(_ sender: Any) {
        let user = usernameTextField.text
        let pass  = passwordTextField.text
        if user == "" || pass == "" {
            label.text = "We need username and password to register value and coresponding key"
            label.textColor = .red
        } else {
            userDef.setValue(pass!, forKey: user!)
            dismiss(animated: true, completion: nil)
        }
    }
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
