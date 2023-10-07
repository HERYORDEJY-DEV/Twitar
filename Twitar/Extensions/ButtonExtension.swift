//
//  ButtonExtension.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/4/23.
//

import Foundation
import SwiftUI

extension Button {
	@ViewBuilder
	func primaryButton(width: CGFloat = 136, height: CGFloat = 34, cornerRadius: CGFloat? = nil, background: Color = Color.accent) -> some View {
		buttonStyle(PrimaryButtonStyle(width: width, height: height, cornerRadius: cornerRadius ?? height * 0.47059, bg: background))
	}

	func bottomTabButton(showIndicator: Bool = false) -> some View {
		buttonStyle(BottomTabButtonStyle())
			.indicatorBadge(isVisible: showIndicator)
			.padding(.top, 15)
			.frame(maxWidth: .infinity)
	}
}
