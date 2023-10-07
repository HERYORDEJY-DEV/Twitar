//
//  TwitView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/2/23.
//

import SwiftUI

// var index: Int = 0
// let t1 = Text("UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring?")
// let t2 = Text("#TellMeAboutYou \("", link: "https://x.com")").foregroundStyle(Color.accent)
// let t3 = Text("Kobe’s passing is really sticking w/ me in a way I didn’t expect.\n\nHe was an icon, the kind of person who wouldn’t die this way. My wife compared it to Princess Di’s accident.\n\nBut the end can happen for anyone at any time, & I can’t help but think of anything else lately.")
// let t4 = Text("Y’all ready for this next post?")
// let t5 = Text("Name a show where the lead character is the worst character on the show I’ll get Sabrina Spellman")
//
// let twitUser = twitUsersData[Int.random(in: 1 ... 10)]
// let twitUser1 = twitUsersData[Int.random(in: 1 ... 10)]
// let twitUser2 = twitUsersData[Int.random(in: 1 ... 10)]
// let twitUser3 = twitUsersData[Int.random(in: 1 ... 10)]

struct TwitView: View {
	//			MARK: - Properties

	var index: Int = 0
	var isIt: Bool = false
	var isIt2: Bool = false
	var isThread: Bool = false

//	init(index: Int) {
//		self.index = index
//		self.isIt = index % 3 != 0
//		self.isIt2 = index % 2 != 0
//		self.isThread = index % 4 != 0
//
//		print("\n###\n index =>> \(index) \n###\n")
//	}

	//			MARK: - Body

	var body: some View {
		NavigationLink {
			//
		}
		label: {
			VStack(alignment: .leading) {
				//				liked by
				HStack {
					Image(index % 3 != 0 ? "ic-heart.fill" : "ic-retwit")
						.resizable()
						.aspectRatio(1.0, contentMode: .fit)
						.frame(width: 12, height: 11.201)
						.foregroundStyle(.secondary)

					if index % 2 != 0 {
						Text("\(twitUser2.displayname) and \(twitUser3.displayname) liked")
							.likedBy().lineLimit(1)
					} else {
						Text("\(twitUser1.displayname) retwited")
							.likedBy().lineLimit(1)
					}
				}.padding(.leading, 42)
					.padding(.horizontal, 20)
				
				// body
				HStack(alignment: .top, spacing: 8) {
					//					user image
					VStack(alignment: .center) {
						Image("img-user-1")
							.renderingMode(.original)
							.resizable()
							.scaledToFit()
							.frame(width: 55, height: 55)
							.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
						
						if index % 4 != 0 {
							Spacer()
								.frame(width: 1, height: .infinity)
								.overlay(
									Rectangle()
										.stroke(Color(red: 0.81, green: 0.84, blue: 0.86), lineWidth: 2)
								)
								.padding(.top, 5)
								.padding(.bottom, 2.5)
							
							Image("img-user-2")
								.renderingMode(.original)
								.resizable()
								.scaledToFit()
								.frame(width: 37, height: 37)
								.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
						}
					}.padding(.bottom, 3)
					
					VStack(alignment: .leading) {
						//						username
						HStack(spacing: 05) {
							Text("\(twitUser.displayname)").title_3().lineLimit(1)
							if twitUser.isVerified {
								Image("ic-verified")
									.resizable()
									.scaledToFit()
									.frame(width: 14, height: 14)
							}
							Text("@\(twitUser.username)")
								.lineLimit(1)
								.foregroundStyle(.secondary)
								.font(Font.custom(AppFontsFamily.regular.name, size: 14))
							Text("·3h")
								.foregroundStyle(.secondary)
								.font(Font.custom(AppFontsFamily.regular.name, size: 14))
							
							Spacer()
							
							Image("ic-chevron-down")
						}
						
						//						content
						if index % 3 != 0 {
							Text("\(t1) \(t2)")
								.multilineTextAlignment(.leading)
								.padding(.bottom, 11)
						} else {
							if index < 9, index > 2 {
								Text("\(t4)")
									.multilineTextAlignment(.leading)
									.padding(.bottom, 11)
							} else {
								Text("\(t3)")
									.multilineTextAlignment(.leading)
									.padding(.bottom, 11)
							}
						}
						
						//						stats
						HStack(alignment: .bottom) {
							//							comments
							HStack(alignment: .bottom, spacing: 3.5) {
								Image("ic-comment")
								Text("\(Int.random(in: 1 ... 999))").twitStats()
							}
							Spacer()
							
							//							retwits
							HStack(alignment: .bottom, spacing: 3.5) {
								Image("ic-retwit")
								Text("\(Int.random(in: 1 ... 999))").twitStats()
							}
							Spacer()
							
							//							likes
							HStack(alignment: .bottom, spacing: 3.5) {
								Image("ic-heart")
								Text("\(Int.random(in: 1 ... 999))").twitStats()
							}
							Spacer()
							
							//							activity
							HStack(alignment: .bottom, spacing: 3.5) {
								Image("ic-activity")
								Text("\(Int.random(in: 1 ... 999))").twitStats()
							}
							Spacer()
							
							//							share
							HStack(alignment: .bottom, spacing: 3.5) {
								Image("ic-share")
							}
						}
						
						//						show thread
						if index % 4 != 0 {
							Text("Show this thread")
								.link()
								.padding(.top, 12)
						}
					}
					.padding(.bottom, 12)
				}.padding(.horizontal, 20)
			}
			.padding(.top, 12)
			.foregroundStyle(Color.primary)
			.background(.colorWhite)
			.withBottomShadow()
//			.buttonStyle(.borderless)
		}.buttonStyle(.borderless)
	}
}

#Preview {
	TwitView(index: 5)
}
