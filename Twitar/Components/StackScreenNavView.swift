//
//  StackScreenNavView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/18/23.
//

import SwiftUI

struct StackScreenNavView: View {
	//			MARK: - Properties

	var title: String = "Title"
	@Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
	var onDismissPresentation: () -> Void

	var body: some View {
		HStack(alignment: .center, spacing: 0) {
			HStack {
				Button {
					onDismissPresentation()
				} label: {
					Image("ic-chevron-left")
						.renderingMode(/*@START_MENU_TOKEN@*/ .template/*@END_MENU_TOKEN@*/)
						.foregroundColor(.accent)
				}
			}
			.frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, alignment: .leading)

			HStack {
				Text(title)
					.navTitle()
			}.frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, alignment: .center)

			HStack {}.frame(maxWidth: .infinity, alignment: .trailing)
		}
		.padding(.horizontal)
		.frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, maxHeight: 44, alignment: .center)
		.withBottomShadow()
	}
}

// #Preview {
//	StackScreenNavView()
// }
