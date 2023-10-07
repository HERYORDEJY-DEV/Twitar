//
//  MessagesView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 9/29/23.
//

import SwiftUI

struct MessagesView: View {
	var body: some View {
		NavigationStack {
			VStack {
				Text("Hello, Messages View!")
			}.toolbar(content: {
				TabScreenNavBarView(activeScreen: .messages)
			})
		}
	}
}

#Preview {
	MessagesView()
}
