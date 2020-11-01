//
//  Storyboarded.swift
//  friendgram
//
//  Created by Evgeny on 17.10.2020.
//  Copyright © 2020 Jerryngton. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate(name: String) -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate(name: String) -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: name, bundle: Bundle.main)
        
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
