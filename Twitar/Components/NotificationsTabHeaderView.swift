//
//  NotificationsTabHeaderView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/7/23.
//

import SwiftUI

enum NotificationsTabHeaderEnum {
	case all, mentions

	var title: String {
		switch self {
			case .all:
				return "All"
			default:
				return "Mentions"
		}
	}
}

struct NotificationsTabHeaderView: View {
	//			MARK: - Properties

	@State var activeTab: NotificationsTabHeaderEnum = .all
	var onSelectTab: (NotificationsTabHeaderEnum) -> Void

	var body: some View {
		HStack(spacing: 0) {
			HStack {
				Spacer()
				Text("All").title_3(color: activeTab == .all ? Color.accent : Color.secondary)
				Spacer()
			}
			.contentShape(Rectangle())
			.onTapGesture {
				activeTab = .all
				self.onSelectTab(.all)
			}
			.frame(maxWidth: .infinity, maxHeight: .infinity)
			.background(indicatorBar(isActive: activeTab == .all))

			HStack {
				Spacer()
				Text("Mentions").title_3(color: activeTab == .mentions ? Color.accent : Color.secondary)
				Spacer()
			}
			.contentShape(Rectangle())
			.onTapGesture {
				activeTab = .mentions
				self.onSelectTab(.mentions)
			}
			.frame(maxWidth: .infinity, maxHeight: .infinity)
			.background(indicatorBar(isActive: activeTab == .mentions))
		}
		.frame(width: .infinity, height: 44)
		.withBottomShadow()
	}

	func indicatorBar(isActive: Bool = false) -> some View {
		VStack {
			Spacer()
			Rectangle()
				.foregroundColor(.clear)
				.frame(height: 2)
				.background(Color(red: 0.3, green: 0.62, blue: 0.92))
				.offset(y: 0)
		}.opacity(isActive ? 1 : 0)
	}
}

// #Preview {
//	NotificationsTabHeaderView( onSelectTab: () -> Void)
// }
