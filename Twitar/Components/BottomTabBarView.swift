//
//  BottomTabBarView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 9/29/23.
//

import SwiftUI

struct BottomTabBarView: View {
	//			MARK: - Properties

	var activeTabScreen: TabStackEnum = .home
	var onSetActiveScreen: (_ screen: TabStackEnum) -> Void

//			MARK: - Body

	var body: some View {
		HStack {
			ForEach(tabStackData) { item in
				let isActive = item.title == activeTabScreen

				Button(action: {
					onSetActiveScreen(item.title)
				}, label: {
					Image(isActive ? item.activeIconName : item.iconName)
				})
				.bottomTabButton()
				
			}
		}

		.frame(maxWidth: .infinity, maxHeight: 83, alignment: .top)
		.background(.colorWhite)
		.shadow(color: Color.colorShadow, radius: 0, x: 0, y: -0.33)
	}
}

#Preview {
	BottomTabBarView { _ in
	}
}
