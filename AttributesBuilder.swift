//
//  AttributesBuilder.swift
//  https://github.com/ysoftware
//
//  Created by Ярослав Ерохин on 14.03.17.
//  Copyright © 2017 Yaroslav Erohin. All rights reserved.
//

import UIKit

/** Helper class for creation of attributes for an NSAttributedString. Request `value` to get the final dictionary.*/
open class AttributesBuilder {

    /** Returns final dictionary to use with NSAttributedString. */
    open var value:[String:Any]

    public init(_ attributes:[String:Any] = [:]) {
        value = attributes
    }

    open func color(_ color:UIColor?) -> Self {
        value[NSForegroundColorAttributeName] = color
        return self
    }

    open func backgroundColor(_ color:UIColor?) -> Self {
        value[NSBackgroundColorAttributeName] = color
        return self
    }

    open func shadow(offset:CGSize, blurRadius:CGFloat, color:UIColor) -> Self {
        let shadow = NSShadow()
        shadow.shadowOffset = offset
        shadow.shadowBlurRadius = blurRadius
        shadow.shadowColor = color
        value[NSShadowAttributeName] = shadow
        return self
    }

    open func removeShadow() -> Self {
        value[NSShadowAttributeName] = nil
        return self
    }

    open func enableLetterpress​Effect(_ enabled:Bool) -> Self {
        value[NSTextEffectAttributeName] = enabled ? NSTextEffectLetterpressStyle : nil
        return self
    }

    open func font(_ font:UIFont?) -> Self {
        value[NSFontAttributeName] = font
        return self
    }

    open func paragraph(style:NSParagraphStyle?) -> Self {
        value[NSParagraphStyleAttributeName] = style
        return self
    }

    open func baseline(offset:CGFloat?) -> Self {
        value[NSBaselineOffsetAttributeName] = offset
        return self
    }

    open func underline(_ style: NSUnderlineStyle?, color:UIColor? = nil) -> Self {
        value[NSUnderlineStyleAttributeName] = style?.rawValue
        value[NSUnderlineColorAttributeName] = color
        return self
    }

    open func expansion(factor:Float?) -> Self {
        value[NSExpansionAttributeName] = factor
        return self
    }

    open func strikeThrough(_ style: NSUnderlineStyle?, color:UIColor? = nil) -> Self {
        value[NSStrikethroughStyleAttributeName] = style?.rawValue
        value[NSStrikethroughColorAttributeName] = color
        return self
    }

    open func obliqueness(_ skew:Float?) -> Self {
        value[NSObliquenessAttributeName] = skew
        return self
    }

    open func kern(_ points:Float?) -> Self {
        value[NSKernAttributeName] = points
        return self
    }

    open func link(_ url:URL?) -> Self {
        value[NSLinkAttributeName] = url
        return self
    }

    /**  Set negative width value to have both fill and stroke.
     More info: 
     https://developer.apple.com/library/prerelease/content/qa/qa1531/_index.html#//apple_ref/doc/uid/DTS40007490
     */
    open func outline(width:Float?, color:UIColor?) -> Self {
        value[NSStrokeWidthAttributeName] = width
        value[NSStrokeColorAttributeName] = color
        return self
    }

}
