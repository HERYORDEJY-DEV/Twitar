//
//  CustomContentView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/1/23.
//

import SwiftUI

struct CustomContentView: View {
	var body: some View {
		VStack(spacing: 20) {
				// Link with custom string interpolation.
			Text("This is a \("custom string interpolation link", link: "https://example.com").")
			
				// Markdown works too.
			Text("This is a [Markdown link](https://example.com).")
		}
		.padding()
	}
}

#Preview {
    CustomContentView()
}
