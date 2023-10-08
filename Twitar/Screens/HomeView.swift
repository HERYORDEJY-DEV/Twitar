//
//  Home.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 9/29/23.
//

import SwiftUI

struct HomeView: View {
	var body: some View {
		NavigationView {
			ZStack {
				VStack(spacing: 0.33) {
					TabScreenNavView(activeScreen: .home).padding(.bottom, 0)
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
