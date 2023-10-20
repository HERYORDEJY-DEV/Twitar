//
//  TabScreenNavView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/1/23.
//

import SwiftUI

let yus = "Yusuf"

struct TabScreenNavView: View {
	//			MARK: - Properties

	@Binding var path: NavigationPath

//	@Environment(\.presentationMode) var presentationMode
//	@State var searchQuery: String = ""
	var topPadding = UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0
	var activeScreen: TabStackEnum = .notification
	var onSearchMessageStart: (() -> Void)?
	var isMessagesViewSearchMode: Bool? = false

	//			MARK: - Body

	var body: some View {
		VStack {
			VStack {
				Spacer().frame(height: topPadding)
				HStack(alignment: .center) {
					//			leading
					VStack {
						Button(action: {
							//
						}) {
							Image("img-user-me")
								.resizable()
								.scaledToFit()
								.frame(width: 32, height: 32, alignment: .center)
								.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
						}

						.background(Color.colorWhite)
						.frame(height: .infinity, alignment: .center)
						.background(Color.colorWhite)
						.overlay {
							Circle()
								.fill(.accent)
								.frame(width: 6, height: 6)
								.overlay(
									Circle()
										.stroke(.white, lineWidth: 1)
										.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
								)
								.offset(x: 12, y: -12)
						}
						.buttonStyle(.borderless)
					}

					Spacer().frame(width: activeScreen == .home ? .infinity : 16)

					//			principal
					Button(action: {}) {
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
								//						.padding(.horizontal, UIScreen.screenWidth * 0.10)
								.frame(width: .infinity, height: 32)
								.background(Color.screenContainer)
								.clipShape(Capsule())

							default:
								HStack {
									Spacer()
									Text(activeScreen.title).navTitle()
									Spacer()
								}
								.frame(width: .infinity)
						}
					}
					.buttonStyle(.borderless)
					.frame(width: .infinity, height: .infinity, alignment: .center)

					Spacer().frame(width: activeScreen == .home ? .infinity : 16)

					//		trailing
					Button(action: {
						// presentationMode.wrappedValue.dismiss()
					}) {
						switch activeScreen {
							case .home:
								Image("ic-feature")

							case .messages:
								Image("ic-settings")
									.onTapGesture {
										path.append("MessagesSettingsView")
									}

							default:
								Image("ic-settings")
						}
					}
//					.navigationDestination(for: String.self) { route in
//						switch route {
//							case "MessagesSettingsView":
//								MessagesSettingsView(path: $path)
//
//							default:
//								EmptyView()
//						}
//					}
				}
				.frame(width: .infinity, height: 44, alignment: .center)
				//			.padding(.top, topPadding)

				if activeScreen == .messages {
					if !isMessagesViewSearchMode! {
						Button(action: {
							onSearchMessageStart!()
						}, label: {
							HStack {
								Image("ic-search")
									.renderingMode(/*@START_MENU_TOKEN@*/ .template/*@END_MENU_TOKEN@*/)
									.padding(.leading, 9.5)
								Text("Search for people and messages")
								Spacer()
							}
							.frame(width: .infinity, height: 32, alignment: .leading)
							.foregroundStyle(.colorSecondary)
							.background(.colorSearchBar)
							.cornerRadius(16)
							.padding(.vertical, 16)
						})
					}
				}
			}
			.frame(width: .infinity, alignment: .bottom)
			.padding(.horizontal, 20)
			//		.buttonStyle(.borderless)
			.withBottomShadow(color: Color(red: 0.74, green: 0.77, blue: 0.8), radius: 0, x: 0, y: 1)
		}
	}
}

// iir
