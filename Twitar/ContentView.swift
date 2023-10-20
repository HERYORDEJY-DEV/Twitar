//
//  ContentView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 9/29/23.
//

import SwiftUI

struct ContentView: View {
	//			MARK: - Properties

	@ObserveInjection var inject

	var body: some View {
		VStack {
			Image(systemName: "globe")
				.imageScale(.large)
				.foregroundStyle(.tint)
			Text("Hello, Yusuf---!").foregroundStyle(Color.accent)
		}
		.padding()
		.enableInjection()
	}
}

#Preview {
	ContentView()
}
