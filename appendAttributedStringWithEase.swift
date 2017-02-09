//
//  appendAttributedStringWithEase.swift
//  https://github.com/ysoftware
//
//  Created by Yaroslav Erohin on 16.07.15.
//  Copyright (c) 2015 Yaroslav Erohin. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
extension NSMutableAttributedString {

    /**
     Adds a string with given attributes.

     - Parameters:
     - string: A string you want to add.
     - attributes: The attributes for the new attributed string.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func append(_ string:String,
                     withAttributes attributes:[String : Any]? = nil) -> NSMutableAttributedString {
        append(NSAttributedString(string: string, attributes: attributes))
        return self
    }

    // MARK: - Fonts

    /**
     Adds a string with a dynamic font.

     - Parameters:
     - string: A string you want to add.
     - style: A text style for dynamic font (ex. UIFontTextStyleBody).
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func append(_ string:String, withStyle style:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: style)))
    }

    /**
     Adds a string with a given font.

     - Parameters:
     - string: A string you want to add.
     - font: An instance of UIFont.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func append(_ string:String, withFont font:UIFont)  -> NSMutableAttributedString {
        return append(string, withAttributes: [NSFontAttributeName:font])
    }

    // MARK: - Colors

    /**
     Adds a string with a given color and a font.

     - Parameters:
     - string: A string you want to add.
     - color: An instance of UIColor.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func append(_ string:String, withColor color:UIColor) -> NSMutableAttributedString {
        return append(string, withAttributes: [NSForegroundColorAttributeName:color])
    }

    /**
     Adds a string with a given color and a font.

     - Parameters:
     - string: A string you want to add.
     - color: An instance of UIColor.
     - font: An instance of UIFont.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func append(_ string:String,
                     withColor color:UIColor, andFont font:UIFont) -> NSMutableAttributedString {
        return append(string, withAttributes: [NSFontAttributeName:font,
                                               NSForegroundColorAttributeName:color])
    }

    /**
     Adds a string with a given color and a dynamic font.

     - Parameters:
     - string: A string you want to add.
     - color: An instance of UIColor.
     - style: A text style for dynamic font (ex. UIFontTextStyleBody).
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func append(_ string:String, withColor color:UIColor,
                     andStyle style:String) -> NSMutableAttributedString {
        return append(string, withColor: color,
                      andFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: style)))
    }

    // MARK: - Underline

    /**
     Adds a string with underlined text of a given color and a dynamic font.

     - Parameters:
     - string: A string you want to add.
     - font: An instance of UIFont.
     - underlineStyle: A style for the underline.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func append(_ string:String, withFont font:UIFont,
                     andUnderlineStyle underline:NSUnderlineStyle) -> NSMutableAttributedString {
        return append(string,
                      withAttributes: [NSFontAttributeName:font,
                                       NSUnderlineStyleAttributeName:underline.rawValue as AnyObject])
    }

    /**
     Adds a string with underlined text of a given color and a dynamic font.

     - Parameters:
     - string: A string you want to add.
     - color: An instance of UIColor.
     - font: An instance of UIFont.
     - underlineStyle: A style for the underline.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func append(_ string:String, withColor color:UIColor, font:UIFont,
                     andUnderlineStyle underline:NSUnderlineStyle) -> NSMutableAttributedString {
        return append(string, withAttributes: [NSFontAttributeName:font,
                                               NSForegroundColorAttributeName:color,
                                               NSUnderlineStyleAttributeName:underline.rawValue])
    }

    /**
     Adds a string with underlined text of a given color and a dynamic font.

     - Parameters:
     - string: A string you want to add.
     - color: An instance of UIColor.
     - style: A text style for dynamic font (ex. UIFontTextStyleBody).
     - underlineStyle: A style for the underline.
     - returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func append(_ string:String, withColor color:UIColor, style:String,
                     andUnderlineStyle underline:NSUnderlineStyle) -> NSMutableAttributedString {
        return append(string, withColor: color,
                      font: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: style)),
                      andUnderlineStyle: underline)
    }

    // MARK: - Strike Through

    /**
     Adds a string with a given color and a dynamic font with a strike through line.

     - Parameters:
     - string: A string you want to add.
     - font: An instance of UIFont.
     - underlineStyle: A style for the strike through line.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func append(_ string:String, withFont font:UIFont,
                     andStrikeThroughStyle strike:NSUnderlineStyle) -> NSMutableAttributedString {
        return append(string, withAttributes: [NSFontAttributeName:font,
                                               NSStrikethroughStyleAttributeName:strike.rawValue])
    }

    /**
     Adds a string with a given color and a dynamic font with a strike through line.

     - Parameters:
     - string: A string you want to add.
     - color: An instance of UIColor.
     - font: An instance of UIFont.
     - underlineStyle: A style for the strike through line.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func append(_ string:String, withColor color:UIColor, font:UIFont,
                     andStrikeThroughStyle strike:NSUnderlineStyle) -> NSMutableAttributedString {
        return append(string, withAttributes: [NSFontAttributeName:font,
                                               NSForegroundColorAttributeName:color,
                                               NSStrikethroughStyleAttributeName:strike.rawValue])
    }

    // MARK: - Superscript

    /**
     Adds a string with a superscript string with a given font of smaller size.

     - Parameters:
     - string: A string you want to add.
     - font: An instance of UIFont.
     - baselineOffset: Baseline offset of the string. Default is 10.
     - fontScale: Multiplier of font's size. Default is 0.7.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func appendSuperscript(_ string:String, withFont font:UIFont,
                                fontScale scale:CGFloat = 0.7,
                                baselineOffset offset:Float = 10) -> NSMutableAttributedString {
        return append(string, withAttributes: [NSFontAttributeName:font.withSize(font.pointSize*scale),
                                               NSBaselineOffsetAttributeName:offset])
    }

    // MARK: - Dynamic Fonts (iOS 9+)

    /**
     Adds a string with a dynamic font of style Title1.

     - Parameter string: A string you want to add.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @available(iOS 9.0, *) @discardableResult
    open func appendTitle1(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .title1))
    }

    /**
     Adds a string with a dynamic font of style Title2.

     - Parameter string: A string you want to add.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @available(iOS 9.0, *) @discardableResult
    open func appendTitle2(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .title2))
    }

    /**
     Adds a string with a dynamic font of style Title3.

     - Parameter string: A string you want to add.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @available(iOS 9.0, *) @discardableResult
    open func appendTitle3(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .title3))
    }

    /**
     Adds a string with a dynamic font of style Callout.

     - Parameter string: A string you want to add.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @available(iOS 9.0, *) @discardableResult
    open func appendCallout(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .callout))
    }

    // MARK: - Dynamic Fonts (iOS 9+) with fallback

    /**
     Adds a string with a dynamic font of style Title1 or uses the fallback option if not available.

     For example: UIFontTextStyleHeadline

     - Parameter string: A string you want to add.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func appendTitle1(_ string:String, fallbackToStyle fallback:String) -> NSMutableAttributedString {
        if #available(iOS 9.0, *) {
            return append(string, withFont: UIFont.preferredFont(forTextStyle: .title1))
        } else {
            return append(string,
                          withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: fallback)))
        }
    }

    /**
     Adds a string with a dynamic font of style Title2 or uses the fallback option if not available.

     For example: UIFontTextStyleHeadline

     - Parameter string: A string you want to add.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func appendTitle2(_ string:String, fallbackToStyle fallback:String) -> NSMutableAttributedString {
        if #available(iOS 9.0, *) {
            return append(string, withFont: UIFont.preferredFont(forTextStyle: .title2))
        } else {
            return append(string,
                          withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: fallback)))
        }
    }

    /**
     Adds a string with a dynamic font of style Title3 or uses the fallback option if not available.

     For example: UIFontTextStyleHeadline

     - Parameter string: A string you want to add.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func appendTitle3(_ string:String, fallbackToStyle fallback:String) -> NSMutableAttributedString {
        if #available(iOS 9.0, *) {
            return append(string, withFont: UIFont.preferredFont(forTextStyle: .title3))
        } else {
            return append(string,
                          withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: fallback)))
        }
    }

    /**
     Adds a string with a dynamic font of style Callout.

     For example: UIFontTextStyleFootnote

     - Parameter string: A string you want to add.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func appendCallout(_ string:String, fallbackToStyle fallback:String) -> NSMutableAttributedString {
        if #available(iOS 9.0, *) {
            return append(string, withFont: UIFont.preferredFont(forTextStyle: .callout))
        } else {
            return append(string,
                          withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: fallback)))
        }
    }

    // MARK: - Dynamic Fonts (iOS 7+)

    /**
     Adds a string with a dynamic font of style Subheadline.

     - Parameter string: A string you want to add.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func appendSubheadline(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .subheadline))
    }

    /**
     Adds a string with a dynamic font of style Caption1.

     - Parameter string: A string you want to add.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func appendCaption1(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .caption1))
    }

    /**
     Adds a string with a dynamic font of style Caption2.

     - Parameter string: A string you want to add.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func appendCaption2(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .caption2))
    }

    /**
     Adds a string with a dynamic font of style Headline.

     - Parameter string: A string you want to add.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func appendHeadline(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .headline))
    }

    /**
     Adds a string with a dynamic font of style Footnote.

     - Parameter string: A string you want to add.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func appendFootnote(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .footnote))
    }

    /**
     Adds a string with a dynamic font of style Body.

     - Parameter string: A string you want to add.
     - Returns: This instance of NSMutableAttributedString for chaining.
     */
    @discardableResult
    open func appendBody(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .body))
    }

}
