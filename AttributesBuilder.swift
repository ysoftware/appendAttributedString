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

    @available(iOS 11, *)
    open static func dynamic(_ font:UIFont,
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

    /// Returns the dynamic font set up with dynamic(font:maximumPointSize:scaleAs:compatibleWith:) function.
    @available(iOS 11, *)
    open var dynamicFont:UIFont? {
        return value[NSAttributedStringKey.font] as? UIFont
    }

    /// Set up your font as dynamic.
    @available(iOS 11, *)
    open func dynamic(_ font:UIFont,
                      maximumPointSize maxSize: CGFloat,
                      scaleAs style: UIFontTextStyle? = nil,
                      compatibleWith traits: UITraitCollection? = nil) -> Self {
        return self.font(AttributesBuilder.dynamic(font, maximumPointSize: maxSize,
                                                   scaleAs: style, compatibleWith: traits))
    }

    open func color(_ color:UIColor?) -> Self {
        value[NSAttributedStringKey.foregroundColor] = color
        return self
    }

    open func backgroundColor(_ color:UIColor?) -> Self {
        value[NSAttributedStringKey.backgroundColor] = color
        return self
    }

    open func shadow(offset:CGSize, blurRadius:CGFloat, color:UIColor) -> Self {
        let shadow = NSShadow()
        shadow.shadowOffset = offset
        shadow.shadowBlurRadius = blurRadius
        shadow.shadowColor = color
        value[NSAttributedStringKey.shadow] = shadow
        return self
    }

    open func removeShadow() -> Self {
        value[NSAttributedStringKey.shadow] = nil
        return self
    }

    open func enableLetterpress​Effect(_ enabled:Bool) -> Self {
        value[NSAttributedStringKey.textEffect] = enabled ? NSAttributedString.TextEffectStyle.letterpressStyle : nil
        return self
    }

    open func font(_ font:UIFont?) -> Self {
        value[NSAttributedStringKey.font] = font
        return self
    }

    open func paragraph(style:NSParagraphStyle?) -> Self {
        value[NSAttributedStringKey.paragraphStyle] = style
        return self
    }

    open func baseline(offset:CGFloat?) -> Self {
        value[NSAttributedStringKey.baselineOffset] = offset
        return self
    }

    open func underline(_ style: NSUnderlineStyle?, color:UIColor? = nil) -> Self {
        value[NSAttributedStringKey.underlineStyle] = style?.rawValue
        value[NSAttributedStringKey.underlineColor] = color
        return self
    }

    open func expansion(factor:Float?) -> Self {
        value[NSAttributedStringKey.expansion] = factor
        return self
    }

    open func strikeThrough(_ style: NSUnderlineStyle?, color:UIColor? = nil) -> Self {
        value[NSAttributedStringKey.strikethroughStyle] = style?.rawValue
        value[NSAttributedStringKey.strikethroughColor] = color
        return self
    }

    open func obliqueness(_ skew:Float?) -> Self {
        value[NSAttributedStringKey.obliqueness] = skew
        return self
    }

    open func kern(_ points:Float?) -> Self {
        value[NSAttributedStringKey.kern] = points
        return self
    }

    open func link(_ url:URL?) -> Self {
        value[NSAttributedStringKey.link] = url
        return self
    }

    /// Set negative width value to have both fill and stroke.
    /// More info:
    ///
    /// https://developer.apple.com/library/prerelease/content/qa/qa1531/_index.html#//apple_ref/doc/uid/DTS40007490
    open func outline(width:Float?, color:UIColor?) -> Self {
        value[NSAttributedStringKey.strokeWidth] = width
        value[NSAttributedStringKey.strokeColor] = color
        return self
    }

}
