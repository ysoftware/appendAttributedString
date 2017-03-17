//
//  appendAttributedStringWithEase.swift
//  https://github.com/ysoftware
//
//  Created by Yaroslav Erohin on 16.07.15.
//  Copyright (c) 2015 Yaroslav Erohin. All rights reserved.
//

import UIKit

extension NSMutableAttributedString {

    /**
     Adds a string with given attributes.

     Use `AttributeBuilder` class for easier workflow.

     - Parameters:
        - string: A string you want to add.
        - attributes: The attributes for the new attributed string.
     - Returns: This instance of NSMutableAttributedString for call chaining.
     */
    @discardableResult
    open func append(_ string:String,
                     withAttributes attributes:[String : Any]) -> Self {
        append(NSAttributedString(string: string, attributes: attributes))
        return self
    }

    /** 
    Adds a string with a given color and a font.

    - Parameters:
        - string: A string you want to add.
        - color: An instance of UIColor.
        - font: An instance of UIFont.
        - style: Instance of UIFontTextStyle for dynamic fonts. Used instead of `font` if both set.
        - underlineStyle: Style of underline.
        - strikeThroughStyle: Style of strike through line.
        - attributes: Additional attributed for the string. Use `AttributeBuilder` class for easier workflow.
     - Returns: This instance of NSMutableAttributedString for call chaining.
     */
    @discardableResult
    open func append(_ string:String,
                     color:UIColor? = nil,
                     font:UIFont? = nil,
                     style:UIFontTextStyle? = nil,
                     underlineStyle:NSUnderlineStyle? = nil,
                     strikeThroughStyle:NSUnderlineStyle? = nil,
                     baselineOffset:CGFloat? = nil,
                     attributes:[String : Any] = [:]) -> Self {
        return append(string,
                      withAttributes: AttributesBuilder(attributes)
                        .font(style != nil ? UIFont.preferredFont(forTextStyle: style!) : font)
                        .color(color)
                        .underline(underlineStyle)
                        .baseline(offset: baselineOffset)
                        .strikeThrough(strikeThroughStyle).value)
    }

    /**
     Adds an image attachment to the attributed string.

     - Parameters:
        - string: An instance of UIImage.
        - font: Height for the image. Default is nil - image size is left untouched.
     - Returns: This instance of NSMutableAttributedString for call chaining.
     */
    @discardableResult
    open func append(image: UIImage, height:CGFloat? = nil) -> Self {
        let attachment = NSTextAttachment()
        attachment.image = image
        if let height_ = height {
            let ratio = image.size.width / image.size.height
            attachment.bounds = CGRect(x: attachment.bounds.origin.x, y: attachment.bounds.origin.y,
                                       width: ratio * height_, height: height_)
        }
        append(NSAttributedString(attachment: attachment))
        return self
    }

    // MARK: - Dynamic Fonts

    /** Adds a string with a dynamic font of style Title1. */
    @available(iOS 9.0, *) @discardableResult
    open func appendTitle1(_ string:String) -> Self {
        return append(string, font: UIFont.preferredFont(forTextStyle: .title1))
    }

    /** Adds a string with a dynamic font of style Title2. */
    @available(iOS 9.0, *) @discardableResult
    open func appendTitle2(_ string:String) -> Self {
        return append(string, font: UIFont.preferredFont(forTextStyle: .title2))
    }

    /** Adds a string with a dynamic font of style Title3. */
    @available(iOS 9.0, *) @discardableResult
    open func appendTitle3(_ string:String) -> Self {
        return append(string, font: UIFont.preferredFont(forTextStyle: .title3))
    }

    /** Adds a string with a dynamic font of style Callout. */
    @available(iOS 9.0, *) @discardableResult
    open func appendCallout(_ string:String) -> Self {
        return append(string, font: UIFont.preferredFont(forTextStyle: .callout))
    }

    /** Adds a string with a dynamic font of style Subheadline. */
    @discardableResult
    open func appendSubheadline(_ string:String) -> Self {
        return append(string, font: UIFont.preferredFont(forTextStyle: .subheadline))
    }

    /** Adds a string with a dynamic font of style Caption1. */
    @discardableResult
    open func appendCaption1(_ string:String) -> Self {
        return append(string, font: UIFont.preferredFont(forTextStyle: .caption1))
    }

    /** Adds a string with a dynamic font of style Caption2. */
    @discardableResult
    open func appendCaption2(_ string:String) -> Self {
        return append(string, font: UIFont.preferredFont(forTextStyle: .caption2))
    }

    /** Adds a string with a dynamic font of style Headline. */
    @discardableResult
    open func appendHeadline(_ string:String) -> Self {
        return append(string, font: UIFont.preferredFont(forTextStyle: .headline))
    }

    /** Adds a string with a dynamic font of style Footnote. */
    @discardableResult
    open func appendFootnote(_ string:String) -> Self {
        return append(string, font: UIFont.preferredFont(forTextStyle: .footnote))
    }

    /** Adds a string with a dynamic font of style Body. */
    @discardableResult
    open func appendBody(_ string:String) -> Self {
        return append(string, font: UIFont.preferredFont(forTextStyle: .body))
    }

    /** Adds a string with a dynamic font of style Title1 or uses the fallback option if not available. */
    @discardableResult
    open func appendTitle1(_ string:String,
                           fallbackToStyle fallback:UIFontTextStyle) -> Self {
        if #available(iOS 9.0, *) { return appendTitle1(string) }
        else { return append(string, font: UIFont.preferredFont(forTextStyle: fallback)) }
    }

    /** Adds a string with a dynamic font of style Title2 or uses the fallback option if not available. */
    @discardableResult
    open func appendTitle2(_ string:String,
                           fallbackToStyle fallback:UIFontTextStyle) -> Self {
        if #available(iOS 9.0, *) { return appendTitle2(string) }
        else { return append(string, font: UIFont.preferredFont(forTextStyle: fallback)) }
    }

    /** Adds a string with a dynamic font of style Title3 or uses the fallback option if not available. */
    @discardableResult
    open func appendTitle3(_ string:String,
                           fallbackToStyle fallback:UIFontTextStyle) -> Self {
        if #available(iOS 9.0, *) { return appendTitle3(string) }
        else { return append(string, font: UIFont.preferredFont(forTextStyle: fallback)) }
    }

    /** Adds a string with a dynamic font of style Callout. */
    @discardableResult
    open func appendCallout(_ string:String,
                            fallbackToStyle fallback:UIFontTextStyle) -> Self {
        if #available(iOS 9.0, *) { return appendCallout(string) }
        else { return append(string, font: UIFont.preferredFont(forTextStyle: fallback)) }
    }
}
