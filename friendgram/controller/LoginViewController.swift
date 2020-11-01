//
//  LoginViewController.swift
//  friendgram
//
//  Created by Evgeny on 12.10.2020.
//  Copyright © 2020 Jerryngton. All rights reserved.
//

import UIKit

final class LoginViewController: UIViewController, Storyboarded {
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
            RememberState.setState(forLabel: rememberTip, state: .visible)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RememberState.setState(forLabel: rememberTip, state: .hidden)
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

enum RememberState {
    case hidden
    case visible
    
    static func setState(forLabel label: UILabel, state: RememberState) {
        label.textColor = UIColor.FlatColor.Red.TerraCotta
        label.font = UIFont.customFont(name: "AlNile-Bold", size: 24.0)
        switch(state) {
        case .hidden:
                   label.isHidden = true
                   
        case .visible:
            label.isHidden = false
        }
    }
}

