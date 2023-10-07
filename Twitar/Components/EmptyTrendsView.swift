//
//  EmptyThreadsView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/4/23.
//

import SwiftUI

struct EmptyTrendsView: View {
	var body: some View {
		HStack {
//			Spacer()

			VStack(alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/, spacing: 15, content: {
				Text("No new trends for you ")
					.title_1()
				Text("It seems like there’s not a lot to show you right\nnow, but you can see trends for other areas")
					.multilineTextAlignment(.center)
					.foregroundColor(.secondary)
					.padding(.bottom, 10)

							Button(action: {
								print("Yusuf")
							}) {
								HStack(alignment: .center) {
									Spacer()
									Text("Change Location ")
										.buttonTitle()
									Spacer()
								}
							}
							.primaryButton()

			})
//			Spacer()
		}
		.frame(width: .infinity, height: 202, alignment: .center)
		.background(.colorWhite)
		
	}
}

#Preview {
	EmptyTrendsView()
		.preferredColorScheme(.light)
}

#Preview {
	EmptyTrendsView()
		.preferredColorScheme(.dark)
}
