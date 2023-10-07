//
//  TabStackView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 9/29/23.
//

import Foundation

enum TabStackEnum {
	case home, trends, notification, messages
	
	var title : String {
		switch self {
					// Use Internationalization, as appropriate.
			case .home: return "Home"
			case .trends: return "Trends"
			case .notification: return "Notifications"
			case .messages: return "Messages"
		}
	}
}

struct TabStackModel: Identifiable {
	var id: UUID
	var title: TabStackEnum
	var iconName: String
	var activeIconName: String
	
	
	
}

var tabStackData: [TabStackModel] = [
	TabStackModel(id: UUID(), title: .home, iconName: "ic-home", activeIconName: "ic-home.fill"),
	TabStackModel(id: UUID(), title: .trends, iconName: "ic-search", activeIconName: "ic-search.fill"),
	TabStackModel(id: UUID(), title: .notification, iconName: "ic-bell", activeIconName: "ic-bell.fill"),
	TabStackModel(id: UUID(), title: .messages, iconName: "ic-message", activeIconName: "ic-message.fill"),
]
