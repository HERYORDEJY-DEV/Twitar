//
//  FabView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/1/23.
//

import SwiftUI

struct FabView: View {
//	let action: () -> Void
	var iconString: String? = "circle"
	var iconView: String? = nil

	var body: some View {
		VStack {
			Spacer()
			HStack {
				Spacer()
				Button(action: {
					//
				}) {
					if iconView == nil {
						Image(systemName: iconString ?? "circle.cirle")
							.font(.system(size: 25))
							.foregroundColor(.white)
					} else {
						Image(iconView!)
							.resizable()
							.scaledToFit()
							.frame(width: 24, height: 24)
							.foregroundColor(.white)
					}
				}
				.frame(width: 56, height: 56, alignment: .center)
				.background(Color.accent)
				.cornerRadius(30)
				.shadow(radius: 10)
				.offset(x: -12, y: 0)
			}
		}.ignoresSafeArea()
	}
}

#Preview {
	FabView()
}
