//
//  appendAttributedStringWithEase.swift
//  Ysoftware
//
//  Created by Yaroslav Erohin on 16.07.15.
//  Copyright (c) 2015 Yaroslav Erohin. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
public extension NSMutableAttributedString {

    /// Appends an attributed string with given attributes.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter attributes: The attributes for the new attributed string.
    func append(_ string:String, withAttributes attributes:[String : Any]?) {
        self.append(NSAttributedString(string: string, attributes: attributes))
    }

    // MARK: - Fonts

    /// Appends an attributed string with a dynamic font.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter style: A text style for dynamic font (ex. UIFontTextStyleBody).
    func append(_ string:String, withStyle style:String) {
        self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: style)))
    }

    /// Appends an attributed string with a given font.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter font: An instance of UIFont.
    func append(_ string:String, withFont font:UIFont) {
        self.append(string, withAttributes: [NSFontAttributeName:font])
    }

    // MARK: - Colors

    /// Appends an attributed string with a given color and a font.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter color: An instance of UIColor.
    /// - parameter font: An instance of UIFont.
    func append(_ string:String, withColor color:UIColor, andFont font:UIFont) {
        self.append(string, withAttributes: [NSFontAttributeName:font, NSForegroundColorAttributeName:color])
    }

    /// Appends an attributed string with a given color and a dynamic font.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter color: An instance of UIColor.
    /// - parameter style: A text style for dynamic font (ex. UIFontTextStyleBody).
    func append(_ string:String, withColor color:UIColor, andStyle style:String) {
        self.append(string, withColor: color, andFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: style)))
    }

    // MARK: - Underline

    /// Appends an attributed string with underlined text of a given color and a dynamic font.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter font: An instance of UIFont.
    /// - parameter underlineStyle: A style for the underline.
    func append(_ string:String, withFont font:UIFont, andUnderlineStyle underline:NSUnderlineStyle) {
        self.append(string, withAttributes: [NSFontAttributeName:font, NSUnderlineStyleAttributeName:underline.rawValue as AnyObject])
    }

    /// Appends an attributed string with underlined text of a given color and a dynamic font.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter color: An instance of UIColor.
    /// - parameter font: An instance of UIFont.
    /// - parameter underlineStyle: A style for the underline.
    func append(_ string:String, withColor color:UIColor, font:UIFont, andUnderlineStyle underline:NSUnderlineStyle) {
        self.append(string, withAttributes: [NSFontAttributeName:font, NSForegroundColorAttributeName:color, NSUnderlineStyleAttributeName:underline.rawValue])
    }

    /// Appends an attributed string with underlined text of a given color and a dynamic font.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter color: An instance of UIColor.
    /// - parameter style: A text style for dynamic font (ex. UIFontTextStyleBody).
    /// - parameter underlineStyle: A style for the underline.
    func append(_ string:String, withColor color:UIColor, style:String, andUnderlineStyle underline:NSUnderlineStyle) {
        self.append(string, withColor: color, font: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: style)), andUnderlineStyle: underline)
    }

    // MARK: - Strike Through

    /// Appends an attributed string with a given color and a dynamic font with a strike through line.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter font: An instance of UIFont.
    /// - parameter underlineStyle: A style for the strike through line.
    func append(_ string:String, withFont font:UIFont, andStrikeThroughStyle strike:NSUnderlineStyle) {
        self.append(string, withAttributes: [NSFontAttributeName:font, NSStrikethroughStyleAttributeName:strike.rawValue])
    }

    /// Appends an attributed string with a given color and a dynamic font with a strike through line.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter color: An instance of UIColor.
    /// - parameter font: An instance of UIFont.
    /// - parameter underlineStyle: A style for the strike through line.
    func append(_ string:String, withColor color:UIColor, font:UIFont, andStrikeThroughStyle strike:NSUnderlineStyle) {
        self.append(string, withAttributes: [NSFontAttributeName:font, NSForegroundColorAttributeName:color, NSStrikethroughStyleAttributeName:strike.rawValue])
    }

    // MARK: - Superscript

    /// Appends an attributed string with a superscript string with a given font of smaller size.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter font: An instance of UIFont.
    /// - parameter baselineOffset: Baseline offset of the string. Default is 10.
    /// - parameter fontScale: Multiplier of font's size. Default is 0.7.
    func appendSuperscript(_ string:String, withFont font:UIFont, fontScale scale:CGFloat = 0.7, baselineOffset offset:Float = 10) {
        self.append(string, withAttributes: [NSFontAttributeName:font.withSize(font.pointSize*scale), NSBaselineOffsetAttributeName:offset])
    }

    // MARK: - Dynamic Fonts

    // NEW IN iOS 9

    /// Appends an attributed string with a dynamic font of style Title1.
    ///
    /// - parameter string: A string you want to add.
    @available(iOS 9.0, *)
    func appendTitle1(_ string:String) {
        self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle.title1))
    }

    /// Appends an attributed string with a dynamic font of style Title2.
    ///
    /// - parameter string: A string you want to add.
    @available(iOS 9.0, *)
    func appendTitle2(_ string:String) {
        self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle.title2))
    }

    /// Appends an attributed string with a dynamic font of style Title3.
    ///
    /// - parameter string: A string you want to add.
    @available(iOS 9.0, *)
    func appendTitle3(_ string:String) {
        self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle.title3))
    }

    /// Appends an attributed string with a dynamic font of style Callout.
    ///
    /// - parameter string: A string you want to add.
    @available(iOS 9.0, *)
    func appendCallout(_ string:String) {
        self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle.callout))
    }

    // WITH FALLBACKS

    /// Appends an attributed string with a dynamic font of style Title1 or uses the fallback option if not available.
    /// For example: UIFontTextStyleHeadline
    ///
    /// - parameter string: A string you want to add.
    func appendTitle1(_ string:String, fallbackToStyle fallback:String) {
        if #available(iOS 9.0, *) {
            self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle.title1))
        } else {
            self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: fallback)))
        }
    }

    /// Appends an attributed string with a dynamic font of style Title2 or uses the fallback option if not available.
    /// For example: UIFontTextStyleHeadline
    ///
    /// - parameter string: A string you want to add.
    func appendTitle2(_ string:String, fallbackToStyle fallback:String) {
        if #available(iOS 9.0, *) {
            self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle.title2))
        } else {
            self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: fallback)))
        }
    }

    /// Appends an attributed string with a dynamic font of style Title3 or uses the fallback option if not available.
    /// For example: UIFontTextStyleHeadline
    ///
    /// - parameter string: A string you want to add.
    func appendTitle3(_ string:String, fallbackToStyle fallback:String) {
        if #available(iOS 9.0, *) {
            self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle.title3))
        } else {
            self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: fallback)))
        }
    }

    /// Appends an attributed string with a dynamic font of style Callout.
    /// For example: UIFontTextStyleFootnote
    ///
    /// - parameter string: A string you want to add.
    func appendCallout(_ string:String, fallbackToStyle fallback:String) {
        if #available(iOS 9.0, *) {
            self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle.callout))
        } else {
            self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: fallback)))
        }
    }

    // OLDER ONES

    /// Appends an attributed string with a dynamic font of style Subheadline.
    ///
    /// - parameter string: A string you want to add.
    func appendSubheadline(_ string:String) {
        self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle.subheadline))
    }

    /// Appends an attributed string with a dynamic font of style Caption1.
    ///
    /// - parameter string: A string you want to add.
    func appendCaption1(_ string:String) {
        self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle.caption1))
    }

    /// Appends an attributed string with a dynamic font of style Caption2.
    ///
    /// - parameter string: A string you want to add.
    func appendCaption2(_ string:String) {
        self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle.caption2))
    }

    /// Appends an attributed string with a dynamic font of style Headline.
    ///
    /// - parameter string: A string you want to add.
    func appendHeadline(_ string:String) {
        self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline))
    }

    /// Appends an attributed string with a dynamic font of style Footnote.
    ///
    /// - parameter string: A string you want to add.
    func appendFootnote(_ string:String) {
        self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle.footnote))
    }

    /// Appends an attributed string with a dynamic font of style Body.
    ///
    /// - parameter string: A string you want to add.
    func appendBody(_ string:String) {
        self.append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle.body))
    }
    
}
