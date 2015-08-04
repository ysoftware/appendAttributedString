//
//  appendAttributedStringWithEase.swift
//  Ysoftware
//
//  Created by Yaroslav Erohin on 16.07.15.
//  Copyright (c) 2015 Yaroslav Erohin. All rights reserved.
//

import UIKit

public extension NSMutableAttributedString {

    /// Appends an attributed string with given attributes.
    ///
    /// :param: string A string you want to add.
    /// :param: attributes The attributes for the new attributed string.
    func append(string:String, withAttributes attributes:[NSObject : AnyObject]?) {
        self.appendAttributedString(NSAttributedString(string: string, attributes: attributes))
    }

    // MARK: - Fonts

    /// Appends an attributed string with a dynamic font.
    ///
    /// :param: string A string you want to add.
    /// :param: style A text style for dynamic font (ex. UIFontTextStyleBody).
    func append(string:String, withStyle style:String) {
        self.append(string, withFont: UIFont.preferredFontForTextStyle(style))
    }

    /// Appends an attributed string with a given font.
    ///
    /// :param: string A string you want to add.
    /// :param: font An instance of UIFont.
    func append(string:String, withFont font:UIFont) {
        self.append(string, withAttributes: [NSFontAttributeName:font])
    }

    // MARK: - Colors

    /// Appends an attributed string with a given color and a font.
    ///
    /// :param: string A string you want to add.
    /// :param: color An instance of UIColor.
    /// :param: font An instance of UIFont.
    func append(string:String, withColor color:UIColor, andFont font:UIFont) {
        self.append(string, withAttributes: [NSFontAttributeName:font, NSForegroundColorAttributeName:color])
    }

    /// Appends an attributed string with a given color and a dynamic font.
    ///
    /// :param: string A string you want to add.
    /// :param: color An instance of UIColor.
    /// :param: style A text style for dynamic font (ex. UIFontTextStyleBody).
    func append(string:String, withColor color:UIColor, andStyle style:String) {
        self.append(string, withColor: color, andFont: UIFont.preferredFontForTextStyle(style))
    }

    // MARK: - Underline

    /// Appends an attributed string with underlined text of a given color and a dynamic font.
    ///
    /// :param: string A string you want to add.
    /// :param: color An instance of UIColor.
    /// :param: font An instance of UIFont.
    /// :param: underlineStyle A style for the underline.
    func append(string:String, withColor color:UIColor, font:UIFont, andUnderlineStyle underline:NSUnderlineStyle) {
        self.append(string, withAttributes: [NSFontAttributeName:font, NSForegroundColorAttributeName:color, NSUnderlineStyleAttributeName:underline.rawValue])
    }

    /// Appends an attributed string with underlined text of a given color and a dynamic font.
    ///
    /// :param: string A string you want to add.
    /// :param: color An instance of UIColor.
    /// :param: style A text style for dynamic font (ex. UIFontTextStyleBody).
    /// :param: underlineStyle A style for the underline.
    func append(string:String, withColor color:UIColor, style:String, andUnderlineStyle underline:NSUnderlineStyle) {
        self.append(string, withColor: color, font: UIFont.preferredFontForTextStyle(style), andUnderlineStyle: underline)
    }

    // MARK: - Strike Through

    /// Appends an attributed string with a given color and a dynamic font with a strike through line.
    ///
    /// :param: string A string you want to add.
    /// :param: color An instance of UIColor.
    /// :param: font An instance of UIFont.
    /// :param: underlineStyle A style for the strike through line.
    func append(string:String, withColor color:UIColor, font:UIFont, andStrikeThroughStyle strike:NSUnderlineStyle) {
        self.append(string, withAttributes: [NSFontAttributeName:font, NSForegroundColorAttributeName:color, NSStrikethroughStyleAttributeName:strike.rawValue])
    }

    // MARK: - Dynamic Fonts

    /// Appends an attributed string with a dynamic font of style Subheadline.
    ///
    /// :param: string A string you want to add.
    func appendSubheadline(string:String) {
        self.append(string, withFont: UIFont.preferredFontForTextStyle(UIFontTextStyleSubheadline))
    }

    /// Appends an attributed string with a dynamic font of style Caption1.
    ///
    /// :param: string A string you want to add.
    func appendCaption1(string:String) {
        self.append(string, withFont: UIFont.preferredFontForTextStyle(UIFontTextStyleCaption1))
    }

    /// Appends an attributed string with a dynamic font of style Caption2.
    ///
    /// :param: string A string you want to add.
    func appendCaption2(string:String) {
        self.append(string, withFont: UIFont.preferredFontForTextStyle(UIFontTextStyleCaption2))
    }

    /// Appends an attributed string with a dynamic font of style Headline.
    ///
    /// :param: string A string you want to add.
    func appendHeadline(string:String) {
        self.append(string, withFont: UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline))
    }

    /// Appends an attributed string with a dynamic font of style Footnote.
    ///
    /// :param: string A string you want to add.
    func appendFootnote(string:String) {
        self.append(string, withFont: UIFont.preferredFontForTextStyle(UIFontTextStyleFootnote))
    }

    /// Appends an attributed string with a dynamic font of style Body.
    ///
    /// :param: string A string you want to add.
    func appendBody(string:String) {
        self.append(string, withFont: UIFont.preferredFontForTextStyle(UIFontTextStyleBody))
    }
    
}