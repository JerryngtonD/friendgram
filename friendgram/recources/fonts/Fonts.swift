//
//  Fonts.swift
//  friendgram
//
//  Created by Evgeny on 26.10.2020.
//  Copyright © 2020 Jerryngton. All rights reserved.
//

import UIKit


extension UIFont {
    public static func customFont(name: String, size: CGFloat) -> UIFont {
        let font = UIFont(name: name, size: size)
        assert(font != nil, "Can't load font: \(name)")
        return font ?? UIFont.systemFont(ofSize: size)
    }
    
    public static func mainFont(ofSize size: CGFloat) -> UIFont {
        return customFont(name: "MyLovely-CustomFont", size: size)
    }
}



