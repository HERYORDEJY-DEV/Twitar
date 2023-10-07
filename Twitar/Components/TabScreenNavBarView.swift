//
//  TabScreenNavBarView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 9/29/23.
//

import SwiftUI

struct TabScreenNavBarView: ToolbarContent {
	//			MARK: - Properties

	@Environment(\.presentationMode) var presentationMode
	var activeScreen: TabStackEnum = .home
	@State var searchQuery: String = ""

//	let title = acti.home

	var body: some ToolbarContent {
		ToolbarItem(placement: .navigationBarLeading) {
			Button(action: {
				presentationMode.wrappedValue.dismiss()
			}) {
				Image("img-user-me")
					.resizable()
					.scaledToFit()
					.frame(width: 32, height: 32)
					.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
			}.frame(height: 45, alignment: .center)
		}

		ToolbarItem(placement: .principal) {
			Button(action: {
				presentationMode.wrappedValue.dismiss()
			}) {
				switch activeScreen {
					case .home:
						Image("ic-logo")

					case .trends:

						HStack(spacing: 6) {
							Spacer()
							Image("ic-search")
								.renderingMode(.template)
								.resizable()
								.tint(Color.inputPlaceholder)
								.scaledToFit()
								.frame(width: 13, height: 13)
							Text("Search Twitar")
								.font(.custom("SFPro Text", size: 17))
								.foregroundStyle(Color.inputPlaceholder)
							Spacer()
						}
						.padding(.horizontal, UIScreen.screenWidth * 0.10)
						.frame(width: .infinity, height: 32)
						.background(Color.screenContainer)
						.clipShape(Capsule())

					default:
						Text(activeScreen.title).navTitle()
				}
			}.frame(height: 45, alignment: .center)
		}

		ToolbarItem(placement: .topBarTrailing) {
			Button(action: {
				presentationMode.wrappedValue.dismiss()
			}) {
				switch activeScreen {
					case .home:
						Image("ic-feature")

					default:
						Image("ic-settings")
				}

			}.frame(height: 45, alignment: .center)
		}
	}
}
