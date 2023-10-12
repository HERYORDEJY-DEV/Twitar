//
//  MotificationsMentionItemView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/12/23.
//

import SwiftUI

struct MotificationsMentionItemView: View {
	var body: some View {
		VStack(spacing: 0) {
			HStack(alignment: .top) {
				Image("img-user-2")
					.resizable()
					.scaledToFit()
					.frame(width: 55, height: 55, alignment: .center)
					.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

				VStack(alignment: .leading) {
					HStack {
						Text("Mariane")
							.title_3()
						Text("@marianeee ·1/21/20")
							.foregroundStyle(.secondary)
					}
					Text("Hey")
						.body(size: 16)
					Text("@theflaticon @iconmonstr @pixsellz @dan")
						.link()
					Text("Check our  new article “Top Icons Packs and Resources for Web”. You are in! 😎")
						.body()
					Text("👉  marianeee.com/blog/top-icons...")
						.link(size: 16)

					VStack(alignment: .leading, spacing: 0) {
						Image("img-horse-plane")
							.resizable()
							.aspectRatio(contentMode: .fill)
							.frame(width: 311, height: 162.6699981689453)
							.clipped()

						VStack(alignment: .leading) {
							Text("Top Icons Packs and Resources for Web")
							Text("flatlogic.com")
								.foregroundStyle(.secondary)
						}
						.padding(.horizontal, 12)
						.padding(.top, 8)
						.padding(.bottom, 3)

					}.background(.clear)
						.cornerRadius(12)
						.overlay(
							RoundedRectangle(cornerRadius: 12)
								.inset(by: 0.17)
								.stroke(Color(red: 0.81, green: 0.84, blue: 0.86), lineWidth: 0.33)
						)

					HStack {
						Button {} label: {
							HStack(spacing: 3.5) {
								Image("ic-comment")
								Text("\(Int.random(in: 1 ... 99))")
									.twitStats()
							}
						}.buttonStyle(.plain)
							.frame(maxWidth: .infinity, alignment: .leading)

						Button {} label: {
							HStack(spacing: 3.5) {
								Image("ic-retwit")
								Text("\(Int.random(in: 1 ... 99))")
									.twitStats()
							}
						}.buttonStyle(.plain)
							.frame(maxWidth: .infinity, alignment: .leading)

						Button {} label: {
							HStack(spacing: 3.5) {
								Image("ic-heart")
								Text("\(Int.random(in: 1 ... 99))")
									.twitStats()
							}
						}.buttonStyle(.plain)
							.frame(maxWidth: .infinity, alignment: .leading)

						Button {} label: {
							HStack(spacing: 3.5) {
								Image("ic-share")
							}
						}.buttonStyle(.plain)
							.frame(maxWidth: .infinity, alignment: .leading)

						Spacer()
							.frame(maxWidth: .infinity, alignment: .leading)
					}
					.padding(.top, 11)
				}
			}
			.padding(.horizontal, 20)
			.padding(.vertical, 11)
		}
		.withBottomShadow()
	}
}

#Preview {
	MotificationsMentionItemView()
}
