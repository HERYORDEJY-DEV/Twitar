//
//  TabStackView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 9/29/23.
//

import SwiftUI

struct TabStackView: View {
//			MARK: - Properties

	@State var activeScreen: TabStackEnum = .home

	func onSetActiveScreen(screen: TabStackEnum) {
		activeScreen = screen
	}

	var body: some View {
		ZStack {
			Group {
				switch activeScreen {
					case .home:
						HomeView()
					case .trends:
						TrendsView() 
					case .notification:
						NotificationsView() 
					case .messages:
						MessagesView()
				}

			}.frame(maxHeight: .infinity)
				.background(Color.colorWhite)
			BottomTabBarView(activeTabScreen: activeScreen, onSetActiveScreen: self.onSetActiveScreen)
				.frame(maxHeight: .infinity, alignment: .bottom)
				.ignoresSafeArea(.all)
		}
	}
}

#Preview {
	TabStackView()
}
