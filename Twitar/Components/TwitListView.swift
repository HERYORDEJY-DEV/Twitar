//
//  TwitListView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/1/23.
//

import SwiftUI

struct TwitListView: View {
	//			MARK: - Properties

	let listLength = Array(repeating: Text("\(Int.random(in: 6 ... 11))"), count: 11)
	let columns = [GridItem(.flexible())]
//	let columns = [GridItem(.flexible()), GridItem(.flexible())]
	var atad = 0x1f600 ... 0x1f612

	var body: some View {
		LazyVGrid(columns: [GridItem()]) {
			ForEach(atad, id: \.self) { index in
				TwitView()
			}
 
			HStack(alignment: .center) {
				LoadingIndicatorView()
			}
			.background(Color.colorWhite)
			.padding(.top, 50)
			.padding(.bottom, 160)
			.frame(width: .infinity, height: 160, alignment: .center)

//		LazyVGrid(columns: columns) {
//			ForEach(atad, id: \.self) { index in
//
			////				Text(String(format: "%x", value))
//				TwitView(index: index)
//			}
		}
	}

	private func emoji(_ value: Int) -> String {
		guard let scalar = UnicodeScalar(value) else { return "?" }
		return String(Character(scalar))
	}
}

#Preview {
	TwitListView()
}
