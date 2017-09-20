//
//  AttributesBuilder.swift
//  https://github.com/ysoftware
//
//  Created by Ярослав Ерохин on 14.03.17.
//  Copyright © 2017 Yaroslav Erohin. All rights reserved.
//

import UIKit

/// Helper class for creation of attributes for an NSAttributedString. Request `value` to get the final dictionary.
open class AttributesBuilder {

    /// Returns final dictionary to use with NSAttributedString.
    open var value:[NSAttributedStringKey:Any]

    public init(_ attributes:[NSAttributedStringKey:Any] = [:]) {
        value = attributes
    }

    // MARK: - Methods

    /// Returns the dynamic font set up with dynamic(font:maximumPointSize:scaleAs:compatibleWith:) function.
    @available(iOS 11, *)
    open var dynamicFont:UIFont? {
        return value[.font] as? UIFont
    }

    /// Set up your font as dynamic.
    @available(iOS 11, *)
    open func dynamic(_ font:UIFont,
                      maximumPointSize maxSize: CGFloat,
                      scaleAs style: UIFontTextStyle? = nil,
                      compatibleWith traits: UITraitCollection? = nil) -> Self {
        return self.font(.dynamic(font, maximumPointSize: maxSize,
                                                   scaleAs: style, compatibleWith: traits))
    }

    open func color(_ color:UIColor?) -> Self {
        value[.foregroundColor] = color
        return self
    }

    open func backgroundColor(_ color:UIColor?) -> Self {
        value[.backgroundColor] = color
        return self
    }

    open func shadow(offset:CGSize, blurRadius:CGFloat, color:UIColor) -> Self {
        let shadow = NSShadow()
        shadow.shadowOffset = offset
        shadow.shadowBlurRadius = blurRadius
        shadow.shadowColor = color
        value[.shadow] = shadow
        return self
    }

    open func removeShadow() -> Self {
        value[.shadow] = nil
        return self
    }

    open func enableLetterpress​Effect(_ enabled:Bool) -> Self {
        value[.textEffect] = enabled ? NSAttributedString.TextEffectStyle.letterpressStyle : nil
        return self
    }

    open func font(_ font:UIFont?) -> Self {
        value[.font] = font
        return self
    }

    open func paragraph(style:NSParagraphStyle?) -> Self {
        value[.paragraphStyle] = style
        return self
    }

    open func baseline(offset:CGFloat?) -> Self {
        value[.baselineOffset] = offset
        return self
    }

    open func underline(_ style: NSUnderlineStyle?, color:UIColor? = nil) -> Self {
        value[.underlineStyle] = style?.rawValue
        value[.underlineColor] = color
        return self
    }

    open func expansion(factor:Float?) -> Self {
        value[.expansion] = factor
        return self
    }

    open func strikeThrough(_ style: NSUnderlineStyle?, color:UIColor? = nil) -> Self {
        value[.strikethroughStyle] = style?.rawValue
        value[.strikethroughColor] = color
        return self
    }

    open func obliqueness(_ skew:Float?) -> Self {
        value[.obliqueness] = skew
        return self
    }

    open func kern(_ points:Float?) -> Self {
        value[.kern] = points
        return self
    }

    open func link(_ url:URL?) -> Self {
        value[.link] = url
        return self
    }

    /// Set negative width value to have both fill and stroke.
    /// More info:
    ///
    /// https://developer.apple.com/library/prerelease/content/qa/qa1531/_index.html#//apple_ref/doc/uid/DTS40007490
    open func outline(width:Float?, color:UIColor?) -> Self {
        value[.strokeWidth] = width
        value[.strokeColor] = color
        return self
    }
}

@available(iOS 11, *)
public extension UIFont {
    public static func dynamic(_ font:UIFont,
                             maximumPointSize maxSize: CGFloat? = nil,
                             scaleAs style: UIFontTextStyle? = nil,
                             compatibleWith traits: UITraitCollection? = nil) -> UIFont {
        let metrics:UIFontMetrics
        if let style_ = style { metrics = UIFontMetrics(forTextStyle: style_) }
        else { metrics = UIFontMetrics.default }
        if let maxSize_ = maxSize {
            return metrics.scaledFont(for: font, maximumPointSize: maxSize_, compatibleWith: traits)
        }
        return metrics.scaledFont(for: font, compatibleWith: traits)
    }
}
