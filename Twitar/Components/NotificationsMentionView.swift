//
//  NotificationsMentionView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/8/23.
//

import SwiftUI

struct NotificationsMentionView: View {
	var body: some View {
		ScrollView {
//			LazyVGrid(columns: [GridItem()], spacing: 0.33) {
			ForEach(0 ..< Int.random(in: 6 ..< 13)) { _ in
				MotificationsMentionItemView()
//						.padding(.top, 0.33)
			}
			HStack(alignment: .center) {
				LoadingIndicatorView()
			}
			.background(Color.colorWhite)
			.padding(.top, 50)
			.padding(.bottom, 160)
			.frame(width: .infinity, height: 160, alignment: .center)
//			}
		}
	}
}

#Preview {
	NotificationsMentionView()
}
