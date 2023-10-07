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
