//
//  appendAttributedStringWithEase.swift
//  Ysoftware
//
//  Created by Ярослав Ерохин on 16.07.15.
//  Copyright (c) 2015 Yaroslav Erohin. All rights reserved.
//

import UIKit

extension NSMutableAttributedString {

    /// Uses default adaptive fonts for text style
    func appendString(string:String, withStyle style:String) {
        self.appendString(string, withFont: UIFont.preferredFontForTextStyle(style))
    }

    func appendString(string:String, withFont font:UIFont) {
        self.appendString(string, withAttributes: [NSFontAttributeName:font])
    }

    func appendString(string:String, withAttributes attributes:[NSObject : AnyObject]?) {
        self.appendAttributedString(NSAttributedString(string: string, attributes: attributes))
    }
}