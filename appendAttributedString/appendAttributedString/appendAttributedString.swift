//
//  appendAttributedStringWithEase.swift
//  https://github.com/ysoftware
//
//  Created by Yaroslav Erohin on 16.07.15.
//  Copyright © 2015 Yaroslav Erohin. All rights reserved.
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
	func append(_ string: String,
				withAttributes attributes: [NSAttributedString.Key : Any]) -> Self {
		append(NSAttributedString(string: string, attributes: attributes))
		return self
	}

	/// Adds a string with an instance of attributes builder.
	///
	/// - Parameters:
	///   - string: A string you want to add.
	///   - builder: An instsnce of `AttributesBuilder`.
	/// - Returns: This instance of NSMutableAttributedString for call chaining.
	@discardableResult
	func append(_ string: String,
				with builder: AttributesBuilder) -> Self {
		append(NSAttributedString(string: string, attributes: builder.build()))
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
	func append(_ string: String,
				color: UIColor? = nil,
				font: UIFont? = nil,
				style: UIFont.TextStyle? = nil,
				underlineStyle: NSUnderlineStyle? = nil,
				strikeThroughStyle: NSUnderlineStyle? = nil,
				baselineOffset: CGFloat? = nil,
				attributes: [NSAttributedString.Key : Any] = [:]) -> Self {
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
	func append(image: UIImage, height: CGFloat? = nil) -> Self {
		let attachment = NSTextAttachment()
		attachment.image = image
		if let height = height {
			let ratio = image.size.width / image.size.height
			attachment.bounds = CGRect(x: attachment.bounds.origin.x,
									   y: attachment.bounds.origin.y,
									   width: ratio * height,
									   height: height)
		}
		append(NSAttributedString(attachment: attachment))
		return self
	}

	/// Adds another attributed string and returns itself.
	/// - Parameters:
	///   - attributedString: Instance of an attributed string.
	/// - Returns: This instance of NSMutableAttributedString for call chaining.
	func append(another attributedString: NSAttributedString) -> Self {
		append(attributedString)
		return self
	}
}
