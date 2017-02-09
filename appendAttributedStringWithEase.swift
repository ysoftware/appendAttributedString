//
//  appendAttributedStringWithEase.swift
//  https://github.com/ysoftware
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
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func append(_ string:String, withAttributes attributes:[String : Any]?) -> NSMutableAttributedString {
        append(NSAttributedString(string: string, attributes: attributes))
        return self
    }

    // MARK: - Fonts

    /// Appends an attributed string with a dynamic font.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter style: A text style for dynamic font (ex. UIFontTextStyleBody).
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func append(_ string:String, withStyle style:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: style)))
    }

    /// Appends an attributed string with a given font.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter font: An instance of UIFont.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func append(_ string:String, withFont font:UIFont)  -> NSMutableAttributedString {
        return append(string, withAttributes: [NSFontAttributeName:font])
    }

    // MARK: - Colors

    /// Appends an attributed string with a given color and a font.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter color: An instance of UIColor.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func append(_ string:String, withColor color:UIColor) -> NSMutableAttributedString {
        return append(string, withAttributes: [NSForegroundColorAttributeName:color])
    }

    /// Appends an attributed string with a given color and a font.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter color: An instance of UIColor.
    /// - parameter font: An instance of UIFont.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func append(_ string:String, withColor color:UIColor, andFont font:UIFont) -> NSMutableAttributedString {
        return append(string, withAttributes: [NSFontAttributeName:font,
                                               NSForegroundColorAttributeName:color])
    }

    /// Appends an attributed string with a given color and a dynamic font.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter color: An instance of UIColor.
    /// - parameter style: A text style for dynamic font (ex. UIFontTextStyleBody).
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func append(_ string:String, withColor color:UIColor,
                andStyle style:String) -> NSMutableAttributedString {
        return append(string, withColor: color,
                      andFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: style)))
    }

    // MARK: - Underline

    /// Appends an attributed string with underlined text of a given color and a dynamic font.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter font: An instance of UIFont.
    /// - parameter underlineStyle: A style for the underline.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func append(_ string:String, withFont font:UIFont,
                andUnderlineStyle underline:NSUnderlineStyle) -> NSMutableAttributedString {
        return append(string,
                      withAttributes: [NSFontAttributeName:font,
                                       NSUnderlineStyleAttributeName:underline.rawValue as AnyObject])
    }

    /// Appends an attributed string with underlined text of a given color and a dynamic font.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter color: An instance of UIColor.
    /// - parameter font: An instance of UIFont.
    /// - parameter underlineStyle: A style for the underline.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func append(_ string:String, withColor color:UIColor, font:UIFont,
                andUnderlineStyle underline:NSUnderlineStyle) -> NSMutableAttributedString {
        return append(string, withAttributes: [NSFontAttributeName:font,
                                               NSForegroundColorAttributeName:color,
                                               NSUnderlineStyleAttributeName:underline.rawValue])
    }

    /// Appends an attributed string with underlined text of a given color and a dynamic font.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter color: An instance of UIColor.
    /// - parameter style: A text style for dynamic font (ex. UIFontTextStyleBody).
    /// - parameter underlineStyle: A style for the underline.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func append(_ string:String, withColor color:UIColor, style:String,
                andUnderlineStyle underline:NSUnderlineStyle) -> NSMutableAttributedString {
        return append(string, withColor: color,
                      font: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: style)),
                      andUnderlineStyle: underline)
    }

    // MARK: - Strike Through

    /// Appends an attributed string with a given color and a dynamic font with a strike through line.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter font: An instance of UIFont.
    /// - parameter underlineStyle: A style for the strike through line.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func append(_ string:String, withFont font:UIFont,
                andStrikeThroughStyle strike:NSUnderlineStyle) -> NSMutableAttributedString {
        return append(string, withAttributes: [NSFontAttributeName:font,
                                               NSStrikethroughStyleAttributeName:strike.rawValue])
    }

    /// Appends an attributed string with a given color and a dynamic font with a strike through line.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter color: An instance of UIColor.
    /// - parameter font: An instance of UIFont.
    /// - parameter underlineStyle: A style for the strike through line.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func append(_ string:String, withColor color:UIColor, font:UIFont,
                andStrikeThroughStyle strike:NSUnderlineStyle) -> NSMutableAttributedString {
        return append(string, withAttributes: [NSFontAttributeName:font,
                                               NSForegroundColorAttributeName:color,
                                               NSStrikethroughStyleAttributeName:strike.rawValue])
    }

    // MARK: - Superscript

    /// Appends an attributed string with a superscript string with a given font of smaller size.
    ///
    /// - parameter string: A string you want to add.
    /// - parameter font: An instance of UIFont.
    /// - parameter baselineOffset: Baseline offset of the string. Default is 10.
    /// - parameter fontScale: Multiplier of font's size. Default is 0.7.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func appendSuperscript(_ string:String, withFont font:UIFont,
                           fontScale scale:CGFloat = 0.7,
                           baselineOffset offset:Float = 10) -> NSMutableAttributedString {
        return append(string, withAttributes: [NSFontAttributeName:font.withSize(font.pointSize*scale),
                                               NSBaselineOffsetAttributeName:offset])
    }

    // MARK: - Dynamic Fonts

    // NEW IN iOS 9

    /// Appends an attributed string with a dynamic font of style Title1.
    ///
    /// - parameter string: A string you want to add.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @available(iOS 9.0, *) @discardableResult
    func appendTitle1(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .title1))
    }

    /// Appends an attributed string with a dynamic font of style Title2.
    ///
    /// - parameter string: A string you want to add.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @available(iOS 9.0, *) @discardableResult
    func appendTitle2(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .title2))
    }

    /// Appends an attributed string with a dynamic font of style Title3.
    ///
    /// - parameter string: A string you want to add.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @available(iOS 9.0, *) @discardableResult
    func appendTitle3(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .title3))
    }

    /// Appends an attributed string with a dynamic font of style Callout.
    ///
    /// - parameter string: A string you want to add.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @available(iOS 9.0, *) @discardableResult
    func appendCallout(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .callout))
    }

    // WITH FALLBACKS

    /// Appends an attributed string with a dynamic font of style Title1 or uses the fallback option if not available.
    /// For example: UIFontTextStyleHeadline
    ///
    /// - parameter string: A string you want to add.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func appendTitle1(_ string:String, fallbackToStyle fallback:String) -> NSMutableAttributedString {
        if #available(iOS 9.0, *) {
            return append(string, withFont: UIFont.preferredFont(forTextStyle: .title1))
        } else {
            return append(string,
                          withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: fallback)))
        }
    }

    /// Appends an attributed string with a dynamic font of style Title2 or uses the fallback option if not available.
    /// For example: UIFontTextStyleHeadline
    ///
    /// - parameter string: A string you want to add.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func appendTitle2(_ string:String, fallbackToStyle fallback:String) -> NSMutableAttributedString {
        if #available(iOS 9.0, *) {
            return append(string, withFont: UIFont.preferredFont(forTextStyle: .title2))
        } else {
            return append(string,
                          withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: fallback)))
        }
    }

    /// Appends an attributed string with a dynamic font of style Title3 or uses the fallback option if not available.
    /// For example: UIFontTextStyleHeadline
    ///
    /// - parameter string: A string you want to add.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func appendTitle3(_ string:String, fallbackToStyle fallback:String) -> NSMutableAttributedString {
        if #available(iOS 9.0, *) {
            return append(string, withFont: UIFont.preferredFont(forTextStyle: .title3))
        } else {
            return append(string,
                          withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: fallback)))
        }
    }

    /// Appends an attributed string with a dynamic font of style Callout.
    /// For example: UIFontTextStyleFootnote
    ///
    /// - parameter string: A string you want to add.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func appendCallout(_ string:String, fallbackToStyle fallback:String) -> NSMutableAttributedString {
        if #available(iOS 9.0, *) {
            return append(string, withFont: UIFont.preferredFont(forTextStyle: .callout))
        } else {
            return append(string,
                          withFont: UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: fallback)))
        }
    }

    // OLDER ONES

    /// Appends an attributed string with a dynamic font of style Subheadline.
    ///
    /// - parameter string: A string you want to add.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func appendSubheadline(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .subheadline))
    }

    /// Appends an attributed string with a dynamic font of style Caption1.
    ///
    /// - parameter string: A string you want to add.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func appendCaption1(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .caption1))
    }

    /// Appends an attributed string with a dynamic font of style Caption2.
    ///
    /// - parameter string: A string you want to add.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func appendCaption2(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .caption2))
    }

    /// Appends an attributed string with a dynamic font of style Headline.
    ///
    /// - parameter string: A string you want to add.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func appendHeadline(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .headline))
    }

    /// Appends an attributed string with a dynamic font of style Footnote.
    ///
    /// - parameter string: A string you want to add.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func appendFootnote(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .footnote))
    }

    /// Appends an attributed string with a dynamic font of style Body.
    ///
    /// - parameter string: A string you want to add.
    /// - returns: This instance of NSMutableAttributedString for chaining. Ex. `string.appendBody("Hello, ").appendHeadline("user")`
    @discardableResult
    func appendBody(_ string:String) -> NSMutableAttributedString {
        return append(string, withFont: UIFont.preferredFont(forTextStyle: .body))
    }
    
}
