//
//  ViewExtension.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/1/23.
//

enum ViewVisibility {
	case show, hide

	var title: String {
		switch self {
			case .show:
				return "SHOW"
			case .hide:
				return "HIDE"
		}
	}
}

import Foundation
import SwiftUI

extension View {
	@ViewBuilder func hidden(_ isHidden: Bool) -> some View {
		switch isHidden {
			case true: self.hidden()
			case false: self
		}
	}

	@ViewBuilder
	func `if`<Content: View>(_ conditional: Bool, content: (Self) -> Content) -> some View {
		if conditional {
			content(self)
		} else {
			self
		}
	}

	func indicatorBadge(isVisible: Bool = false, width: CGFloat = 6.0,
	                    heigth: CGFloat = 6.0,
	                    x: CGFloat = 12,
	                    y: CGFloat = -12,
	                    color: Color = .accent,
	                    strokeColor: Color = .white,
	                    strokeWidth: CGFloat = 1) -> some View
	{
		return overlay(
			Circle()
				.fill(color)
				.frame(width: width, height: heigth)
				.overlay(
					Circle()
						.stroke(strokeColor, lineWidth: strokeWidth)
						.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
						.opacity(isVisible ? 1 : 0)
				)
				.opacity(isVisible ? 1 : 0)
				.offset(x: x, y: y)
		)
	}

	@ViewBuilder
	func withBottomShadow(color: Color = .colorShadow, radius: CGFloat = 0, x: CGFloat = 0, y: CGFloat = 0.33) -> some View {
		background(.colorWhite)
			.shadow(color: color, radius: radius, x: x, y: y)
	}

	@ViewBuilder
	func screenContainer(bg: Color = Color.screenContainer, width: CGFloat = .infinity, height: CGFloat = .infinity) -> some View {
		background(bg)
//			.frame(width: width, height: height)
	}

//	@ViewBuilder
//	func primaryButton(width: CGFloat = 136, height: CGFloat = 34, cornerRadius: CGFloat = 16, bg: Color = Color.accent) -> some View {
//		foregroundStyle(Color.white)
//			.background(Rectangle()
//				.foregroundColor(.clear)
//				.frame(width: width, height: height)
//				.background(bg)
//				.cornerRadius(cornerRadius)
//			)
//	}
}
