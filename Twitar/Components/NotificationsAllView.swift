//
//  NotificationsAllView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/8/23.
//

import SwiftUI

var text1 = "Lorem ipsum dolor sit amet\n\nconsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

var text2 = "🔥 Are you using WordPress and migrating to the JAMstack? I wrote up a case study about how Smashing Magazine moved to JAMstack and saw great performance improvements and better security.\n\nsmashingdrusteer.com/2020/01/migrat..."

struct NotificationsAllView: View {
	var body: some View {
		VStack {
			ScrollView {
				ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { _ in
					item()
				}
				HStack(alignment: .center) {
					LoadingIndicatorView()
				}
				.background(Color.colorWhite)
				.padding(.top, 50)
				.padding(.bottom, 160)
				.frame(width: .infinity, height: 160, alignment: .center)
			}
		}
	}

	func item() -> some View {
		HStack(alignment: .top, spacing: 8) {
			Image("ic-star-solid")
				.padding(.leading, 51)
				.padding(.top, 12)
			VStack(alignment: .leading, spacing: 8) {
				HStack(alignment: .top) {
					Image("img-user-1")
						.resizable()
						.scaledToFit()
						.frame(width: 37, height: 37)
						.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

					Spacer()

					Image("ic-chevron-down")
						.padding(.top, 1)
				}
				Text(text1)
					.foregroundStyle(.secondary)
					.body(size: 16)
			}
			.padding(.trailing, 20)
			.padding(.top, 12)
			.padding(.bottom, 3)
		}.frame(width: .infinity, height: 255)
			.withBottomShadow()
	}
}

#Preview {
	NotificationsAllView()
}
