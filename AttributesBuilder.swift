//
//  AttributesBuilder.swift
//  https://github.com/ysoftware
//
//  Created by Ярослав Ерохин on 14.03.17.
//  Copyright © 2017 Yaroslav Erohin. All rights reserved.
//

import UIKit

/** Helper class for creation of attributes for an NSAttributedString. Request `value` to get the final dictionary.*/
class AttributesBuilder {
    var value:[String:Any]

    init(_ attributes:[String:Any] = [:]) {
        value = attributes
    }

    func color(_ color:UIColor?) -> Self {
        value[NSForegroundColorAttributeName] = color
        return self
    }

    func backgroundColor(_ color:UIColor?) -> Self {
        value[NSBackgroundColorAttributeName] = color
        return self
    }

    func outline(width:Float?, color:UIColor?) -> Self {
        value[NSStrokeWidthAttributeName] = width
        value[NSStrokeColorAttributeName] = color
        return self
    }

    func shadow(offset:CGSize, blurRadius:CGFloat, color:UIColor) -> Self {
        let shadow = NSShadow()
        shadow.shadowOffset = offset
        shadow.shadowBlurRadius = blurRadius
        shadow.shadowColor = color
        value[NSShadowAttributeName] = shadow
        return self
    }

    /** Use this attribute to specify a text effect, such as `NSText​Effect​Letterpress​Style`. */
    func apply​Letterpress​Effect() -> Self {
        value[NSTextEffectAttributeName] = NSTextEffectLetterpressStyle
        return self
    }

    func font(_ font:UIFont?) -> Self {
        value[NSFontAttributeName] = font
        return self
    }

    func paragraph(style:NSParagraphStyle?) -> Self {
        value[NSParagraphStyleAttributeName] = style
        return self
    }

    func baseline(offset:Float?) -> Self {
        value[NSBaselineOffsetAttributeName] = offset
        return self
    }

    func underline(_ style: Int?, color:UIColor? = nil) -> Self {
        value[NSUnderlineStyleAttributeName] = style
        value[NSUnderlineColorAttributeName] = color
        return self
    }

    func expansion(factor:Float?) -> Self {
        value[NSExpansionAttributeName] = factor
        return self
    }

    func strikeThrough(_ style: Int?, color:UIColor? = nil) -> Self {
        value[NSStrikethroughStyleAttributeName] = style
        value[NSStrikethroughColorAttributeName] = color
        return self
    }


    func obliqueness(_ skew:Float?) -> Self {
        value[NSObliquenessAttributeName] = skew
        return self
    }

    func kern(_ points:Float?) -> Self {
        value[NSKernAttributeName] = points
        return self
    }

    func link(_ url:URL?) -> Self {
        value[NSLinkAttributeName] = url
        return self
    }

    /** If font is not set up before this method, system font of size 16 will be used as a base. */
    func superscript(scale: CGFloat = 0.7, baselineOffset:Float = 10) -> Self {
        let font = (value[NSFontAttributeName] as? UIFont) ?? UIFont.systemFont(ofSize: 16)
        value[NSFontAttributeName] = font.withSize(font.pointSize*scale)
        value[NSBaselineOffsetAttributeName] = baselineOffset
        return self
    }

}
