//
//  NotificationsView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 9/29/23.
//

import SwiftUI

struct NotificationsView: View {
	//			MARK: - Properties

	@State var selectedTab: NotificationsTabHeaderEnum = .all

	func onSelectTab(tab: NotificationsTabHeaderEnum) {
		selectedTab = tab
	}

	//			MARK: - Body

	var body: some View {
		VStack {
			TabScreenNavView(activeScreen: .notification)
			NotificationsTabHeaderView(
				onSelectTab: self.onSelectTab)
			ZStack {
				TabView(selection: $selectedTab) {
					NotificationsAllView()
						.tag(NotificationsTabHeaderEnum.all)
					NotificationsMentionView()
						.tag(NotificationsTabHeaderEnum.mentions)
				}.frame(width: .infinity)
//					.tabViewStyle(.page(indexDisplayMode: .never))
					.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

				FabView(iconView: "ic-add-text")
					.padding(.bottom, 100)
					.ignoresSafeArea()
			}
		}
		.ignoresSafeArea()
	}
}

#Preview {
	NotificationsView()
}
