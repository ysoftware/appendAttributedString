//
//  appendAttributedStringWithEase.swift
//  https://github.com/ysoftware
//
//  Created by Yaroslav Erohin on 16.07.15.
//  Copyright (c) 2015 Yaroslav Erohin. All rights reserved.
//

import UIKit

public extension NSMutableAttributedString {

    /// Adds a string with given attributes.
    ///
    /// - Parameters:
    ///   - string: A string you want to add.
    ///   - attributes: The attributes for the new attributed string.
    /// - Returns: This instance of NSMutableAttributedString for call chaining.
    @discardableResult
    public func append(_ string:String,
                     withAttributes attributes:[NSAttributedString.Key : Any]) -> Self {
        append(NSAttributedString(string: string, attributes: attributes))
        return self
    }

    /// Adds a string with a given color and a font.
    ///
    /// - Parameters:
    ///   - string: A string you want to add.
    ///   - color: An instance of UIColor.
    ///   - font: An instance of UIFont.
    ///   - style: Instance of UIFontTextStyle for dynamic fonts. Used instead of `font` if both set.
    ///   - underlineStyle: Style of the underline.
    ///   - strikeThroughStyle: Style of strike through line.
    ///   - baselineOffset: Text offset from the baseline.
    ///   - attributes: Additional attributed for the string. Use `AttributeBuilder` class for easier workflow.
    /// - Returns: This instance of NSMutableAttributedString for call chaining.
    @discardableResult
    public func append(_ string:String,
                     color:UIColor? = nil,
                     font:UIFont? = nil,
                     style:UIFont.TextStyle? = nil,
                     underlineStyle:NSUnderlineStyle? = nil,
                     strikeThroughStyle:NSUnderlineStyle? = nil,
                     baselineOffset:CGFloat? = nil,
                     attributes:[NSAttributedString.Key : Any] = [:]) -> Self {
        return append(string,
                      withAttributes: AttributesBuilder(attributes)
                        .font(style != nil ? .preferredFont(forTextStyle: style!) : font)
                        .color(color)
                        .underline(underlineStyle)
                        .baseline(offset: baselineOffset)
                        .strikeThrough(strikeThroughStyle).value)
    }

    /// Adds an image attachment to the attributed string.
    ///
    /// - Parameters:
    ///   - image: An instance of UIImage.
    ///   - height: Height for the image. Default is nil - image size is left untouched.
    /// - Returns: This instance of NSMutableAttributedString for call chaining.
    @discardableResult
    public func append(image: UIImage, height:CGFloat? = nil) -> Self {
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

    /// Adds a string with a dynamic font of style Title1. 
    @available(iOS 9.0, *) @discardableResult
    public func appendTitle1(_ string:String) -> Self {
        return append(string, font: .preferredFont(forTextStyle: .title1))
    }

    /// Adds a string with a dynamic font of style Title2
    @available(iOS 9.0, *) @discardableResult
    public func appendTitle2(_ string:String) -> Self {
        return append(string, font: .preferredFont(forTextStyle: .title2))
    }

    /// Adds a string with a dynamic font of style Title3
    @available(iOS 9.0, *) @discardableResult
    public func appendTitle3(_ string:String) -> Self {
        return append(string, font: .preferredFont(forTextStyle: .title3))
    }

    /// Adds a string with a dynamic font of style Callout
    @available(iOS 9.0, *) @discardableResult
    public func appendCallout(_ string:String) -> Self {
        return append(string, font: .preferredFont(forTextStyle: .callout))
    }

    /// Adds a string with a dynamic font of style Subheadline
    @discardableResult
    public func appendSubheadline(_ string:String) -> Self {
        return append(string, font: .preferredFont(forTextStyle: .subheadline))
    }

    /// Adds a string with a dynamic font of style Caption1
    @discardableResult
    public func appendCaption1(_ string:String) -> Self {
        return append(string, font: .preferredFont(forTextStyle: .caption1))
    }

    /// Adds a string with a dynamic font of style Caption2
    @discardableResult
    public func appendCaption2(_ string:String) -> Self {
        return append(string, font: .preferredFont(forTextStyle: .caption2))
    }

    /// Adds a string with a dynamic font of style Headline
    @discardableResult
    public func appendHeadline(_ string:String) -> Self {
        return append(string, font: .preferredFont(forTextStyle: .headline))
    }

    /// Adds a string with a dynamic font of style Footnote
    @discardableResult
    public func appendFootnote(_ string:String) -> Self {
        return append(string, font: .preferredFont(forTextStyle: .footnote))
    }

    /// Adds a string with a dynamic font of style Body
    @discardableResult
    public func appendBody(_ string:String) -> Self {
        return append(string, font: .preferredFont(forTextStyle: .body))
    }

    /// Adds a string with a dynamic font of style Title1 or uses the fallback option if not available
    @discardableResult
    public func appendTitle1(_ string:String,
                           fallbackToStyle fallback:UIFont.TextStyle? = nil) -> Self {
        if #available(iOS 9.0, *) { return appendTitle1(string) }
        else { return append(string, style: fallback) }
    }

    /// Adds a string with a dynamic font of style Title2 or uses the fallback option if not available
    @discardableResult
    public func appendTitle2(_ string:String,
                           fallbackToStyle fallback:UIFont.TextStyle? = nil) -> Self {
        if #available(iOS 9.0, *) { return appendTitle2(string) }
        else { return append(string, style: fallback) }
    }

    /// Adds a string with a dynamic font of style Title3 or uses the fallback option if not available
    @discardableResult
    public func appendTitle3(_ string:String,
                           fallbackToStyle fallback:UIFont.TextStyle? = nil) -> Self {
        if #available(iOS 9.0, *) { return appendTitle3(string) }
        else { return append(string, style: fallback) }
    }

    /// Adds a string with a dynamic font of style Callout
    @discardableResult
    public func appendCallout(_ string:String,
                            fallbackToStyle fallback:UIFont.TextStyle? = nil) -> Self {
        if #available(iOS 9.0, *) { return appendCallout(string) }
        else { return append(string, style: fallback) }
    }
}
