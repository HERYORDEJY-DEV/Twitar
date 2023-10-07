//
//  TextExtension.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/1/23.
//

import Foundation
import SwiftUI

extension Text {
	func navTitle() -> some View {
		font(Font.get(type: .navTitle))
			.tracking(-0.3)
			.foregroundStyle(Color.primary)
	}

	func title_1() -> some View {
		font(Font.get(type: .title_1))
			.tracking(-0.3)
			.foregroundStyle(Color.primary)
	}

	func title_2() -> some View {
		font(Font.get(type: .title_2))
			.tracking(-0.3)
			.foregroundStyle(Color.primary)
	}

	func title_3() -> some View {
		font(Font.get(type: .title_3))
			.tracking(-0.3)
			.foregroundStyle(Color.primary)
	}

	func buttonTitle() -> some View {
		font(Font.get(type: .buttonTitle))
			.tracking(-0.1)
			.foregroundStyle(Color.white)
	}

	func likedBy() -> some View {
		font(Font.get(type: .likedBy))
			.tracking(-0.3)
			.foregroundStyle(Color.secondary)
	}

	func twitStats() -> some View {
		font(Font.get(type: .twitStats))
			.tracking(-0.15)
			.foregroundStyle(Color.secondary)
			.underline(color: Color.secondary)
	}

	func link() -> some View {
		font(Font.get(type: .link))
			.tracking(-0.3)
			.foregroundStyle(Color.accent)
	}
}

extension LocalizedStringKey.StringInterpolation {
	/// String interpolation support for links in Text.
	///
	/// Usage:
	///
	///     let url: URL = …
	///     Text("\("Link title", url: url)")
	mutating func appendInterpolation(_ linkTitle: String, link url: URL) {
		var linkString = AttributedString(linkTitle)
		linkString.link = url
		self.appendInterpolation(linkString)
	}

	/// String interpolation support for links in Text.
	///
	/// Usage:
	///
	///     Text("\("Link title", url: "https://example.com")")
	mutating func appendInterpolation(_ linkTitle: String, link urlString: String) {
		self.appendInterpolation(linkTitle, link: URL(string: urlString)!)
	}
}
