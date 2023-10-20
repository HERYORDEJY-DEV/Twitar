//
//  ButtonStyles.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/4/23.
//

import Foundation
import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
	//			MARK: - Properties

	var width: CGFloat, height: CGFloat, cornerRadius: CGFloat, bg: Color
	@Environment(\.isEnabled) var isEnabled

	//			MARK: - Body

	func makeBody(configuration: Configuration) -> some View {
		configuration.label
			.foregroundStyle(Color.white)
			.buttonStyle(.borderless)
			.background(Rectangle()
				.foregroundColor(.clear)
				.frame(width: width, height: height, alignment: .center)
				.background(bg)
				.cornerRadius(cornerRadius)
			)
			.opacity(configuration.isPressed ? 0.5 : 1)
			.saturation(isEnabled ? 1 : 0)
	}
}

struct SecondaryButtonStyle: ButtonStyle {
	//			MARK: - Properties

	var width: CGFloat, height: CGFloat, cornerRadius: CGFloat, bg: Color
	@Environment(\.isEnabled) var isEnabled

	//			MARK: - Body

	func makeBody(configuration: Configuration) -> some View {
		configuration.label
			.foregroundStyle(Color.white)
			.buttonStyle(.borderless)
			.background(Rectangle()
				.foregroundColor(.clear)
				.frame(maxWidth: width, maxHeight: height)
				.background(bg)
				.cornerRadius(cornerRadius)
			)
			.opacity(configuration.isPressed ? 0.5 : 1)
			.saturation(isEnabled ? 1 : 0)
	}
}

struct BottomTabButtonStyle: ButtonStyle {
	func makeBody(configuration: Configuration) -> some View {
		configuration.label
			.buttonStyle(.borderless)
	}
}
