//
//  CocoaFonts.swift
//  friendgram
//
//  Created by Evgeny on 26.10.2020.
//  Copyright © 2020 Jerryngton. All rights reserved.
//


import UIKit

extension NSFont {
    private static func customFont(name: String, size: CGFloat) -> NSFont {
        let font = NSFont(name: name, size: size)
        assert(font != nil, "Can't load font: \(name)")
        return font ?? NSFont.systemFont(ofSize: size)
    }
    
    static func mainFont(ofSize size: CGFloat) -> NSFont {
        return customFont(name: "MyLovely-CustomFont", size: size)
    }

}
