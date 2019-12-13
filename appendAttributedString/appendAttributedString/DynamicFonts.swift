//
//  DynamicFonts.swift
//  https://github.com/ysoftware
//
//  Created by Yaroslav Erohin on 13.12.2019.
//  Copyright © 2015 Yaroslav Erohin. All rights reserved.
//

import UIKit

public extension NSMutableAttributedString {
	
	/// Adds a string with a dynamic font of style Title1.
	@available(iOS 9.0, *) @discardableResult
	func appendTitle1(_ string:String) -> Self {
		return append(string, font: .preferredFont(forTextStyle: .title1))
	}

	/// Adds a string with a dynamic font of style Title2
	@available(iOS 9.0, *) @discardableResult
	func appendTitle2(_ string: String) -> Self {
		return append(string, font: .preferredFont(forTextStyle: .title2))
	}

	/// Adds a string with a dynamic font of style Title3
	@available(iOS 9.0, *) @discardableResult
	func appendTitle3(_ string: String) -> Self {
		return append(string, font: .preferredFont(forTextStyle: .title3))
	}

	/// Adds a string with a dynamic font of style Callout
	@available(iOS 9.0, *) @discardableResult
	func appendCallout(_ string: String) -> Self {
		return append(string, font: .preferredFont(forTextStyle: .callout))
	}

	/// Adds a string with a dynamic font of style Subheadline
	@discardableResult
	func appendSubheadline(_ string: String) -> Self {
		return append(string, font: .preferredFont(forTextStyle: .subheadline))
	}

	/// Adds a string with a dynamic font of style Caption1
	@discardableResult
	func appendCaption1(_ string: String) -> Self {
		return append(string, font: .preferredFont(forTextStyle: .caption1))
	}

	/// Adds a string with a dynamic font of style Caption2
	@discardableResult
	func appendCaption2(_ string: String) -> Self {
		return append(string, font: .preferredFont(forTextStyle: .caption2))
	}

	/// Adds a string with a dynamic font of style Headline
	@discardableResult
	func appendHeadline(_ string: String) -> Self {
		return append(string, font: .preferredFont(forTextStyle: .headline))
	}

	/// Adds a string with a dynamic font of style Footnote
	@discardableResult
	func appendFootnote(_ string: String) -> Self {
		return append(string, font: .preferredFont(forTextStyle: .footnote))
	}

	/// Adds a string with a dynamic font of style Body
	@discardableResult
	func appendBody(_ string: String) -> Self {
		return append(string, font: .preferredFont(forTextStyle: .body))
	}

	/// Adds a string with a dynamic font of style Title1 or uses the fallback option if not available
	@discardableResult
	func appendTitle1(_ string: String,
					  fallbackToStyle fallback: UIFont.TextStyle? = nil) -> Self {
		if #available(iOS 9.0, *) { return appendTitle1(string) }
		else { return append(string, style: fallback) }
	}

	/// Adds a string with a dynamic font of style Title2 or uses the fallback option if not available
	@discardableResult
	func appendTitle2(_ string: String,
					  fallbackToStyle fallback: UIFont.TextStyle? = nil) -> Self {
		if #available(iOS 9.0, *) { return appendTitle2(string) }
		else { return append(string, style: fallback) }
	}

	/// Adds a string with a dynamic font of style Title3 or uses the fallback option if not available
	@discardableResult
	func appendTitle3(_ string: String,
					  fallbackToStyle fallback: UIFont.TextStyle? = nil) -> Self {
		if #available(iOS 9.0, *) { return appendTitle3(string) }
		else { return append(string, style: fallback) }
	}

	/// Adds a string with a dynamic font of style Callout
	@discardableResult
	func appendCallout(_ string: String,
					   fallbackToStyle fallback: UIFont.TextStyle? = nil) -> Self {
		if #available(iOS 9.0, *) { return appendCallout(string) }
		else { return append(string, style: fallback) }
	}
}
