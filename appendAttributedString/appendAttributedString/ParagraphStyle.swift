//
//  ParagraphStyle.swift
//  https://github.com/ysoftware
//
//  Created by Ярослав Ерохин on 13.12.2019.
//  Copyright © 2017 Yaroslav Erohin. All rights reserved.
//

import UIKit

public extension AttributesBuilder {

	private var paragraphStyle: NSMutableParagraphStyle {
		if value[.paragraphStyle] == nil {
			value[.paragraphStyle] = NSMutableParagraphStyle()
		}
		return value[.paragraphStyle]! as! NSMutableParagraphStyle
	}

	/// Sets both min and max line heights for the attributed string's paragraph style.
	func lineHeight(_ lineHeight: CGFloat) -> Self {
		paragraphStyle.maximumLineHeight = lineHeight
		paragraphStyle.minimumLineHeight = lineHeight
		return self
	}

	/// Sets both minimum line height for the attributed string's paragraph style.
	func minLineHeight(_ lineHeight: CGFloat) -> Self {
		paragraphStyle.minimumLineHeight = lineHeight
		return self
	}

	/// Sets both maximum line height for the attributed string's paragraph style.
	func maxLineHeight(_ lineHeight: CGFloat) -> Self {
		paragraphStyle.maximumLineHeight = lineHeight
		return self
	}

	/// Sets text alignment of the attributed string's paragraph style.
	func align(_ alignment: NSTextAlignment) -> Self {
		paragraphStyle.alignment = alignment
		return self
	}

	/// Sets the mode that should be used to break lines in the attributed string's paragraph style.
	func lineBreak(_ mode: NSLineBreakMode) -> Self {
		paragraphStyle.lineBreakMode = mode
		return self
	}

	/// Sets the distance in points between the bottom of one line fragment and the top of the next.
	/// This value is compensated to always be nonnegative.
	func lineSpacing(_ spacing: CGFloat) -> Self {
		paragraphStyle.lineSpacing = max(0, spacing)
		return self
	}
}
