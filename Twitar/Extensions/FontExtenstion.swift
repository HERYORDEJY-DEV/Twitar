//
//  FontExtenstion.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/1/23.
//

import SwiftUI

// import SwiftyTheme

enum AppFonts {
	case body, heading, title_1, title_2, title_3, link, likedBy, navTitle, twitStats, buttonTitle
}

enum AppFontsFamily {
	case regular, medium, bold, heavy, semibold

	var name: String {
		switch self {
			case .bold:
				return "SFProText-Bold"

			case .heavy:
				return "SFProText-Heavy"

			case .semibold:
				return "SFProText-Semibold"

			case .medium:
				return "SFProText-Medium"

			default:
				return "SFProText-Regular"
		}
	}
}

extension Font {
	static func system(
		size: CGFloat,
		weight: UIFont.Weight,
		width: UIFont.Width) -> Font
	{
		return Font(
			UIFont.systemFont(
				ofSize: size,
				weight: weight,
				width: width)
		)
	}

	static func get(type: AppFonts = .body, family: AppFontsFamily = .regular, size: CGFloat? = nil) -> Font {
		var fontFamily: AppFontsFamily = .regular

		switch type {
			case .title_1:
				fontFamily = .heavy
				return Font.custom(fontFamily.name, size: size ?? 22.0)

			case .title_2:
				fontFamily = .heavy
				return Font.custom(fontFamily.name, size: size ?? 19.0)

			case .title_3:
				fontFamily = .semibold
				return Font.custom(fontFamily.name, size: size ?? 16.0)

			case .buttonTitle:
				fontFamily = .semibold
				return Font.custom(fontFamily.name, size: size ?? 14.0)

			case .navTitle:
				fontFamily = .heavy
				return Font.custom(fontFamily.name, size: size ?? 17)

			case .twitStats:
				fontFamily = .regular
				return Font.custom(fontFamily.name, size: size ?? 12.0)

			case .link:
				fontFamily = .regular
				return Font.custom(fontFamily.name, size: size ?? 16.0)

			case .likedBy:
				fontFamily = .regular
				return Font.custom(fontFamily.name, size: size ?? 14.0)

			default:
				fontFamily = .regular
				return Font.custom(fontFamily.name, size: size ?? 16.0)
		}
	}
}
