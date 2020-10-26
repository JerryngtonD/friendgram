//
//  UserDetailsViewController.swift
//  friendgram
//
//  Created by Evgeny on 22.10.2020.
//  Copyright © 2020 Jerryngton. All rights reserved.
//

import UIKit

class UserDetailsViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    var user: User?
    private let INCOGNITO_ICON = "incognito"
    
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var secondName: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        firstName.text = user?.firstName
        secondName.text = user?.secondName
        icon.image = UIImage(named: user?.icon ?? INCOGNITO_ICON)
        icon.contentMode = .scaleAspectFit
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
