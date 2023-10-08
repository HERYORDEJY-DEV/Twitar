//
//  TrendsView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 9/29/23.
//

import SwiftUI

struct TrendsView: View {
	//			MARK: - Properties

	@State private var username: String = ""
	@State private var showNavigationBar = false
//	@FocusState private var emailFieldIsFocused: Bool = false

	var body: some View {
		NavigationView {
			VStack(spacing: 0.33) {
				TabScreenNavView(activeScreen: .trends)
				ZStack {
					ScrollView {
						//					header
						VStack(spacing: 0.33) {
							HStack(alignment: .center) {
								Text("Trends for you")
									.title_2()
									.padding(.horizontal, 20)

								Spacer()
									.frame(maxHeight: .infinity)
							}
							.frame(width: .infinity, height: 50.33)
							.background(.white)
							.withBottomShadow()
							EmptyTrendsView()
						}

						Spacer()

					}.screenContainer()
						.frame(height: .infinity)

					FabView(iconView: "ic-add-text")
						.padding(.bottom, 100)
						.ignoresSafeArea()
				}
			}
			.ignoresSafeArea(.all)
			.buttonStyle(.borderless)
			FabView(iconView: "ic-add-text")
				.padding(.bottom, 100)
				.ignoresSafeArea()
		}
	}
}

#Preview {
	TrendsView()
}
