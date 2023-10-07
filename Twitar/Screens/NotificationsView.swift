//
//  NotificationsView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 9/29/23.
//

import SwiftUI

struct NotificationsView: View {
	var body: some View {
		NavigationStack {
			VStack {
				Text("Hello, Notifications View!")
			}.toolbar(content: {
				TabScreenNavBarView(activeScreen: .notification)
			})
		}
	}
}

#Preview {
	NotificationsView()
}
