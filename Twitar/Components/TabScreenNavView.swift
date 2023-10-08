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

//	@Environment(\.presentationMode) var presentationMode
//	@State var searchQuery: String = ""
	var topPadding = UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0
	var activeScreen: TabStackEnum = .notification

	//			MARK: - Body

	var body: some View {
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

						default:
							Image("ic-settings")
					}
				}
			}
			.frame(width: .infinity, height: 44, alignment: .center)
//			.padding(.top, topPadding)
		}
		.frame(width: .infinity, alignment: .bottom)
		.padding(.horizontal, 20)
		.buttonStyle(.borderless)

		.withBottomShadow()
	}
}

#Preview {
	TabScreenNavView(activeScreen: .home)
}
