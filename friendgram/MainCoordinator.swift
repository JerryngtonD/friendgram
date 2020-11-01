//
//  MainCoordinator.swift
//  friendgram
//
//  Created by Evgeny on 17.10.2020.
//  Copyright © 2020 Jerryngton. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.setNavigationBarHidden(true, animated: false)
        let vc = LoginViewController.instantiate(name: "Auth")
        
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func openMainMenu(profile: ProfileShort) {
        let vc = MainMenuViewController.instantiate(name: "Main")
        
        vc.profileShort = profile
    
        vc.coordinator = self
          navigationController.dismiss(animated: true, completion: {
                  self.navigationController.pushViewController(vc, animated: true)
              })
    }
    
    func openFriends() {
        navigationController.setNavigationBarHidden(false, animated: false)
        let vc = FriendsTableViewController.instantiate(name: "Main")
        vc.coordinator = self
        
        
        navigationController.dismiss(animated: true, completion: {
            self.navigationController.pushViewController(vc, animated: true)
        })
    }
    
    func openUserDetails(user: User) {
        let vc = UserDetailsViewController.instantiate(name: "Main")
        vc.coordinator = self
        vc.user = user
        
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
