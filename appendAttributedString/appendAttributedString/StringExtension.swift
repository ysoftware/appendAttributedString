//
//  StringExtension.swift
//  https://github.com/ysoftware
//
//  Created by Ярослав Ерохин on 13.12.2019.
//  Copyright © 2017 Yaroslav Erohin. All rights reserved.
//

import Foundation

public extension String {

	/// Creates a new instance of `NSMutableAttributedString`
	/// with given attributes from this `string`.
	func withAttributes(
		_ attributes: [NSAttributedString.Key : Any] = [:]) -> NSMutableAttributedString {

		return NSMutableAttributedString().append(self, withAttributes: attributes)
	}

	/// Creates a new instance of `NSMutableAttributedString` from this `string`
	/// with attributes passed in an `AttributesBuilder` instance.
	func withAttributes(
		_ builder: AttributesBuilder = .init()) -> NSMutableAttributedString {

		return NSMutableAttributedString().append(self, with: builder)
	}
}
