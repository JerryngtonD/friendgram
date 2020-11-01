//
//  Coordinator.swift
//  friendgram
//
//  Created by Evgeny on 17.10.2020.
//  Copyright © 2020 Jerryngton. All rights reserved.
//

import Foundation
import UIKit


protocol Coordinator {
    var childCoordinators: [Coordinator] {get set}
    var navigationController: UINavigationController {get set}
    
    
    func start()
}
