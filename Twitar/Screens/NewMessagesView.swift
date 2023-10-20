//
//  MessagesView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 9/29/23.
//

import SwiftUI

struct NewMessagesView: View {
	//			MARK: - Properties

	@State private var path = NavigationPath()
	@State private var isSearchMode: Bool = false
	@State private var searchQuery: String = ""

	func onStartSearch() {
		isSearchMode.toggle()
		print("\n###\n isSearchMode =>> \(isSearchMode) \n###\n")
	}

	var body: some View {
		NavigationStack {
//			Nav bar
			VStack(spacing: 0) {
				HStack(alignment: .center) {
					Image("ic-chevron-left")
						.renderingMode(.template)
						.foregroundColor(.black)
						.frame(maxWidth: .infinity, alignment: .leading)
						.padding(.leading, 20)

					Text("New Messages")
						.navTitle()
						.frame(maxWidth: .infinity, alignment: .leading)

					Spacer()
						.frame(maxWidth: .infinity, alignment: .leading)
				}
				.frame(maxWidth: .infinity, maxHeight: 44, alignment: .leading)
				.withBottomShadow(y: 1)

//			Search bar
				HStack {
					Image("ic-search")
					TextField("Search for people and groups", text: $searchQuery)
				}
				.frame(width: .infinity, height: 44, alignment: .leading)
				.padding(.horizontal, 20)
				.background(.colorSearchBar)
				.withBottomShadow()

				ScrollView {
					VStack(spacing: 0) {
						ForEach(0 ..< 25) { _ in
							ItemView()
						}
					}
				}
			}
		}
	}

	func ItemView(index: Int = 0) -> some View {
		var isUnread = index % 3 != 0

		return HStack(alignment: .center, spacing: 0) {
			Image("img-user-3")
				.resizable()
				.scaledToFit()
				.frame(width: 36.5, height: 36.5)
				.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

			VStack(alignment: .leading) {
				Text("AzizDjan")
					.title_3()
				Text("@A-Azzjdan")
					.foregroundStyle(.colorSecondary)
			}
			.frame(maxWidth: .infinity, alignment: .leading)
			.padding(.leading, 8)
		}
		.frame(width: .infinity, height: 62, alignment: .leading)
		.padding(.horizontal, 20)
		.withBottomShadow()
	}
}

#Preview {
	NewMessagesView()
}
