//
//  MessagesView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 9/29/23.
//

import SwiftUI

struct MessagesView: View {
	//			MARK: - Properties

	@State private var path = NavigationPath()
	@State private var isSearchMode: Bool = false
	@State private var searchQuery: String = ""
	@State private var username: String = ""
	@State private var password: String = ""

	func onStartSearch() {
		isSearchMode.toggle()
		print("\n###\n isSearchMode =>> \(isSearchMode) \n###\n")
	}

	var body: some View {
		NavigationStack(path: $path) {
			ZStack {
				VStack(alignment: .leading, spacing: 1) {
					TabScreenNavView(path: $path, activeScreen: .messages, onSearchMessageStart: self.onStartSearch, isMessagesViewSearchMode: isSearchMode)
					ScrollView {
//						Search bar
						if isSearchMode {
							HStack {
								Image("ic-search")
									.renderingMode(/*@START_MENU_TOKEN@*/ .template/*@END_MENU_TOKEN@*/)
									.padding(.leading, 12.5)
								TextField("Search for people and messages", text: $searchQuery)
								Spacer()
							}
							.frame(width: .infinity, height: 45, alignment: .leading)
							.foregroundStyle(.colorSecondary)
							.background(.colorSearchBar)
							.withBottomShadow(bg: .colorSearchBar)
						} else {
							/*@START_MENU_TOKEN@*/EmptyView() /// @END_MENU_TOKEN@
						}

						ForEach(0 ..< Int.random(in: 10 ..< 20), id: \.self) { _ in
							ItemView()
						}
					}
				}
				.ignoresSafeArea()
				FabView(iconView: "ic-add-message")
					.padding(.bottom, 100)
					.ignoresSafeArea()
			}
			.navigationDestination(for: String.self) { route in
				switch route {
					case "MessagesSettingsView":
						MessagesSettingsView(path: $path)
							.navigationBarBackButtonHidden(true)

					default:
						EmptyView()
				}
			}
		}
	}

	func ItemView(index: Int = 0) -> some View {
		var isUnread = index % 3 != 0

		return HStack(alignment: .top, spacing: 0) {
			Image("img-user-3")
				.resizable()
				.scaledToFit()
				.frame(width: 55, height: 55)
				.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

			VStack(alignment: .leading) {
				HStack {
					Text("AzizDjan")
						.title_3()
					Text("@A-Azzjdan")
						.foregroundStyle(.colorSecondary)
					Spacer()
					Text("12/2/19")
						.foregroundStyle(.colorSecondary)
				}
				Text("You: You’re very welcome AzizDjan!")
					.foregroundStyle(.colorSecondary)
			}
			.frame(maxWidth: .infinity, alignment: .leading)
			.padding(.leading, 8)
		}
		.padding(.horizontal, 20)
		.padding(.vertical, 10)
		.withBottomShadow()
	}
}

#Preview {
	MessagesView()
}
