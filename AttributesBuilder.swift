//
//  AttributesBuilder.swift
//  https://github.com/ysoftware
//
//  Created by Ярослав Ерохин on 14.03.17.
//  Copyright © 2017 Yaroslav Erohin. All rights reserved.
//

import UIKit

/** Helper class for creation of attributes for an NSAttributedString.

Use `build()` or `value` to get the result.
*/
open class AttributesBuilder {

	/// Returns the dictionary to use with NSAttributedString.
	open var value:[NSAttributedStringKey:Any]

	/// Returns the dictionary to use with NSAttributedString.
	open func build() -> [NSAttributedStringKey:Any] {
		return value
	}

	/// Initialize a new clean instance of AttributesBuilder.
	public init(_ attributes:[NSAttributedStringKey:Any] = [:]) {
		value = attributes
	}

	// MARK: - Methods

	/** Returns the current font you've set with
	either dynamic(_:maximumPointSize:scaleAs:compatibleWith:) or font(_:)
	*/
	@available(iOS 11, *)
	open var font:UIFont? {
		return value[.font] as? UIFont
	}

	/**
	Set up your font using iOS 11 dynamic fonts.
	- Parameters:
		- font: The base font to use when applying the style information.
		- maximumPointSize: The maximum point size allowed for the font.
		- scaleAs: A utility object for obtaining custom fonts that scale to support Dynamic Type.
		- compatibleWith: The trait collection to use when determining compatibility.
	*/
	@available(iOS 11, *)
	open func dynamic(_ font:UIFont,
					  maximumPointSize maxSize: CGFloat,
					  scaleAs style: UIFontTextStyle? = nil,
					  compatibleWith traits: UITraitCollection? = nil) -> Self {
		return self.font(.dynamic(font, maximumPointSize: maxSize,
								  scaleAs: style, compatibleWith: traits))
	}

	/// Set foreground (text) color.
	open func color(_ color:UIColor?) -> Self {
		value[.foregroundColor] = color
		return self
	}

	/// Set background color.
	open func backgroundColor(_ color:UIColor?) -> Self {
		value[.backgroundColor] = color
		return self
	}

	/**
	Setup text shadow.
	- Parameters:
		- offset: The offset values of the shadow.
		- blurRadius: The blur radius of the shadow.
		- color: The color of the shadow.
	*/
	open func shadow(offset:CGSize, blurRadius:CGFloat, color:UIColor) -> Self {
		let shadow = NSShadow()
		shadow.shadowOffset = offset
		shadow.shadowBlurRadius = blurRadius
		shadow.shadowColor = color
		value[.shadow] = shadow
		return self
	}

	/// Clear parameters of text shadow.
	open func removeShadow() -> Self {
		value[.shadow] = nil
		return self
	}

	/**
	A graphical text effect giving glyphs the appearance of letterpress printing,
	in which type is pressed into the paper.
	*/
	open func enableLetterpress​Effect(_ enabled:Bool) -> Self {
		value[.textEffect] = enabled ? NSAttributedString.TextEffectStyle.letterpressStyle : nil
		return self
	}

	/// Set text font.
	open func font(_ font:UIFont?) -> Self {
		value[.font] = font
		return self
	}

	/// Set paragraph style.
	open func paragraph(style:NSParagraphStyle?) -> Self {
		value[.paragraphStyle] = style
		return self
	}

	/// Set character’s offset from the baseline, in points.
	open func baseline(offset:CGFloat?) -> Self {
		value[.baselineOffset] = offset
		return self
	}

	/// Set underline style and color.
	open func underline(_ style: NSUnderlineStyle?, color:UIColor? = nil) -> Self {
		value[.underlineStyle] = style?.rawValue
		value[.underlineColor] = color
		return self
	}

	/// Set the log of the expansion factor to be applied to glyphs.
	open func expansion(factor:Float?) -> Self {
		value[.expansion] = factor
		return self
	}

	/// Set strike through style and color.
	open func strikeThrough(_ style: NSUnderlineStyle?, color:UIColor? = nil) -> Self {
		value[.strikethroughStyle] = style?.rawValue
		value[.strikethroughColor] = color
		return self
	}

	/// Set value of the skew to be applied to glyphs.
	open func obliqueness(_ skew:Float?) -> Self {
		value[.obliqueness] = skew
		return self
	}

	/**
	This value specifies the number of points by which to adjust kern-pair characters.
	Kerning prevents unwanted space from occurring between specific characters and depends on the font.
	The value 0 means kerning is disabled.
	*/
	open func kern(_ points:Float?) -> Self {
		value[.kern] = points
		return self
	}

	/// Set url link.
	open func link(_ url:URL?) -> Self {
		value[.link] = url
		return self
	}

	/**
	Set outline of the text.

	- important
	Use negative width value to have both fill and stroke.

	More info:
	https://developer.apple.com/library/prerelease/content/qa/qa1531/_index.html#//apple_ref/doc/uid/DTS40007490
	*/
	open func outline(width:Float?, color:UIColor?) -> Self {
		value[.strokeWidth] = width
		value[.strokeColor] = color
		return self
	}
}

@available(iOS 11, *)
public extension UIFont {
	/**
	Create a iOS 11 dynamic font.
	- Parameters:
		- font: The base font to use when applying the style information.
		- maximumPointSize: The maximum point size allowed for the font.
		- scaleAs: A utility object for obtaining custom fonts that scale to support Dynamic Type.
		- compatibleWith: The trait collection to use when determining compatibility.
	*/
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
