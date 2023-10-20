//
//  TextModifier.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/1/23.
//

import Foundation
import SwiftUI

struct NavBarTitleModifier: ViewModifier {
	func body(content: Content) -> some View {
		content.font(Font.get(type: .navTitle)).tracking(-0.3).foregroundStyle(.primary)
	}
}

	//step 1 -- Create a shape view which can give shape
struct CornerRadiusShape: Shape {
	var radius: CGFloat
	var corners: UIRectCorner
	
	func path(in rect: CGRect) -> Path {
		let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
		return Path(path.cgPath)
	}
}

	//step 2 - embed shape in viewModifier to help use with ease
struct CornerRadiusStyle: ViewModifier {
	var radius: CGFloat
	var corners: UIRectCorner
	
	func body(content: Content) -> some View {
		content
			.clipShape(CornerRadiusShape(radius: radius, corners: corners))
	}
}
