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

    func color(_ color:UIColor?) -> AttributesBuilder {
        value[NSForegroundColorAttributeName] = color
        return self
    }

    func font(_ font:UIFont?) -> AttributesBuilder {
        value[NSFontAttributeName] = font
        return self
    }

    func underline(_ style: Int?) -> AttributesBuilder {
        value[NSUnderlineStyleAttributeName] = style
        return self
    }

    func strikeThrough(_ style: Int?) -> AttributesBuilder {
        value[NSStrikethroughStyleAttributeName] = style
        return self
    }

    /** This requires font to be set up first. */
    func superscript(scale: CGFloat = 0.7, baselineOffset:Float = 10) -> AttributesBuilder {
        if let font = value[NSFontAttributeName] as? UIFont {
            value[NSFontAttributeName] = font.withSize(font.pointSize*scale)
            value[NSBaselineOffsetAttributeName] = baselineOffset
        }
        return self
    }

}
