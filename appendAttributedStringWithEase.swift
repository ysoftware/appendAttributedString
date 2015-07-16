//
//  appendAttributedStringWithEase.swift
//  Ysoftware
//
//  Created by Yaroslav Erohin on 16.07.15.
//  Copyright (c) 2015 Yaroslav Erohin. All rights reserved.
//

import UIKit

extension NSMutableAttributedString {

    /// Adds a string with a dynamic font
    ///
    /// :param: string A string you want to add.
    /// :param: style Text style for dynamic font (ex. UIFontTextStyleBody).
    func appendString(string:String, withStyle style:String) {
        self.appendString(string, withFont: UIFont.preferredFontForTextStyle(style))
    }

    /// Adds a string with a given font
    ///
    /// :param: string A string you want to add.
    /// :param: font Self-explanatory.
    func appendString(string:String, withFont font:UIFont) {
        self.appendString(string, withAttributes: [NSFontAttributeName:font])
    }

    /// Adds a string with a given attributes
    ///
    /// :param: string A string you want to add.
    /// :param: attributes The attributes for the new attributed string.
    func appendString(string:String, withAttributes attributes:[NSObject : AnyObject]?) {
        self.appendAttributedString(NSAttributedString(string: string, attributes: attributes))
    }
}