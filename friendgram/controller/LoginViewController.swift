//
//  LoginViewController.swift
//  friendgram
//
//  Created by Evgeny on 12.10.2020.
//  Copyright © 2020 Jerryngton. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    @IBOutlet weak var login: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var rememberTip: UILabel!
    
    @IBOutlet weak var authorizeButton: UIButton!
    
    @IBAction func loginButton(_ sender: Any) {
        rememberTip.isHidden = true
        
        if (checkCredentials()) {
            // MARK: mock data
            let profile = ProfileShort(combinedNickname: "Emelyanov Alex", icon: "incognito", status: "online", lastLoginDate: Date())
            coordinator?.openMainMenu(profile: profile)
        } else {
             rememberTip.isHidden = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rememberTip.isHidden = true
        rememberTip.textColor = UIColor.FlatColor.Red.TerraCotta
        rememberTip.font = UIFont.customFont(name: "AlNile-Bold", size: 24.0)
        
        
        authorizeButton.titleLabel?.font = UIFont.customFont(name: "AlNile-Bold", size: 30.0)
    }
    
    
    // MARK: mock check
    // admin: admin
    private func checkCredentials() -> Bool {
        if (login.text != "admin" && password.text != "admin") {
             return false
        }
        return true
    }
}


extension LoginViewController {
    
}

