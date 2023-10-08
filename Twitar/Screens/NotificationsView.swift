//
//  NotificationsView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 9/29/23.
//

import SwiftUI

struct NotificationsView: View {
	//			MARK: - Properties

	@State var selectedTab: String = "All"

	func onSelectTab(tab: NotificationsTabHeaderEnum) {
		selectedTab = tab.title
	}

	//			MARK: - Body

	var body: some View {
		VStack {
			TabScreenNavView(activeScreen: .notification)
			NotificationsTabHeaderView(
				onSelectTab: self.onSelectTab)
			TabView(selection: $selectedTab) {
				NotificationsAllView()
					.tag("All")
				NotificationsMentionView()
					.tag("Mentions")
			}.frame(width: .infinity)
				.tabViewStyle(.page(indexDisplayMode: .never))
		}
		.ignoresSafeArea()
	}
}

#Preview {
	NotificationsView()
}
