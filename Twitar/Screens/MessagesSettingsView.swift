//
//  MessagesSettingsView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/12/23.
//

import SwiftUI
struct MessagesSettingsView: View {
	//			MARK: - Properties
	@Binding var path: NavigationPath
	@State var isRecieveFromAnyone = false
	@State var isQualityFilter = false
	@State var isShowReciepts = false

	var body: some View {
		NavigationView {
			VStack(alignment: .leading, spacing: 1) {
				VStack(alignment: .leading) {
					Text("Privacy")
						.foregroundColor(.colorSecondary)
						.title_2()
						.padding(.leading, 20)
				}.frame(maxWidth: .infinity, maxHeight: 48, alignment: .leading)
					.withBottomShadow(bg: .clear)

				VStack(spacing: 1) {
					SettingItem(title: "Recieve messages from anyone", description: "You will be able to receive Direct Message requests from anyone on Twitter, even if you don’t follow them.", isActive: $isRecieveFromAnyone)
					SettingItem(title: "Quality filter", description: "Filters lower-quality messages from your Direct Message requests.", isActive: $isQualityFilter)
					SettingItem(title: "Show read receipts", description: "When someone sends you a message, peopla in the conversation will know when you’ve seen it. If you turn off this setting, you won’t be able to see read receipts from others.", isActive: $isShowReciepts)
				}
				.background(.white)

				Spacer()
			}
			.frame(maxWidth: .infinity, maxHeight: .infinity)
			.background(.screenContainer)

			.toolbar(content: {
				ToolbarItem(placement: .principal) {
					Text("Messages settings").navTitle()
				}

				ToolbarItem(placement: .topBarLeading) {
					Image("ic-chevron-left")
						.renderingMode(/*@START_MENU_TOKEN@*/ .template/*@END_MENU_TOKEN@*/)
						.foregroundColor(.accent)
				}

				ToolbarItem(placement: .topBarTrailing) {
					Text("Done")
						.foregroundColor(.accent)
						.title_3()
				}

			})
			.toolbarBackground(.visible, for: .navigationBar, .navigationBar)
			.navigationBarTitleDisplayMode(.inline)
		}
	}


	func SettingItem(title: String = "", description: String = "", isActive: Binding<Bool> = .constant(false)) -> some View {
		return VStack(alignment: .leading) {
			HStack {
				Text(title)
					.title_3()
				Spacer()
				Toggle("", isOn: isActive)
					.labelsHidden()
			}.frame(maxWidth: .infinity, alignment: .topLeading)

			Text(description)
				.foregroundStyle(.colorSecondary) +
				Text(" Learn more")
				.foregroundStyle(.accent)
		}
		.padding(.vertical, 12)
		.withBottomShadow()
		.padding(.horizontal, 20)
	}
}

//#Preview {
//	MessagesSettingsView(path: )
//}
