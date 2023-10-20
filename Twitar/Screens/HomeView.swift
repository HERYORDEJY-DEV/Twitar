//
//  Home.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 9/29/23.
//

import SwiftUI

@available(iOS 16, *)

struct HomeView: View {
	//			MARK: - Properties

	@State private var path = NavigationPath()

	var body: some View {
		NavigationView {
			ZStack {
				VStack(spacing: 0.33) {
					TabScreenNavView(path: $path, activeScreen: .home, onSearchMessageStart: {})
						.padding(.bottom, 0)
					ScrollView {
						TwitListView()
					} 
				}
				FabView(iconView: "ic-add-text")
					.padding(.bottom, 100)
					.ignoresSafeArea()
			}
			.padding(.all, 0)
			.ignoresSafeArea()
		}
	}
}

#Preview {
	HomeView()
}
