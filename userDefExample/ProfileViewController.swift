//
//  ProfileViewController.swift
//  userDefExample
//
//  Created by Nemanja Ducic on 12/8/20.
//

import Foundation
import UIKit
class ProfileViewController:UIViewController{
    let vc = ViewController()

    var name = ""
    @IBOutlet weak var logoutButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    let userDef = UserDefaults.standard
    @IBOutlet weak var selectImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }
    @IBAction func logoutButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setup(){
        nameLabel.text = "Welcome  " + name
        nameLabel.textColor = .systemBlue
        
    }
    
}
