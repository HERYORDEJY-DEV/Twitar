//
//  TwitDetailView.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/18/23.
//

import SwiftUI

@available(iOS 16.4, macOS 13.3, tvOS 16.4, watchOS 9.4, *)

struct ClearBackgroundView: UIViewRepresentable {
	func makeUIView(context: Context) -> UIView {
		return InnerView()
	}

	func updateUIView(_ uiView: UIView, context: Context) {}

	private class InnerView: UIView {
		override func didMoveToWindow() {
			super.didMoveToWindow()

			superview?.superview?.backgroundColor = .clear
		}
	}
}

struct TwitDetailView: View {
	//			MARK: - Properties

	@Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
	@Environment(\.dismiss) private var dismiss
	@State private var reply: String = ""
	@State var showShare: Bool = false
	var isMe = Int.random(in: 0 ... 99) % Int.random(in: 0 ... 999) != 0

	func onDismissPresentation() {
		dismiss()
		print("\n###\n onDismissPresentation =>> \("working") \n###\n")
	}

	//			MARK: - Body

	var body: some View {
		NavigationView {
			ZStack {
				VStack(spacing: 1) {
					StackScreenNavView(title: "Tweet", onDismissPresentation: onDismissPresentation)
					ScrollView {
						VStack {
							VStack {
								if !isMe {
									RetwitBannerView()
								} else {
									/*@START_MENU_TOKEN@*/EmptyView() /// @END_MENU_TOKEN@
								}

								HeaderView()

								Text(isMe ? "~~ hiring for a UX Lead in Sydney - who should I talk to?" : "Quickly create a low-fi wireframe version of your web projects with ready-to-use layouts of Scheme Constructor.")
									.foregroundStyle(Color.primary)
									.multilineTextAlignment(/*@START_MENU_TOKEN@*/ .leading/*@END_MENU_TOKEN@*/)
									.padding(.bottom, 40)

								TwitDateTime()
									.frame(maxWidth: .infinity, alignment: .leading)
							}
							.padding(.bottom, 15)
							.withBottomShadow()
							.padding(.horizontal)

							HStack {
								TwitStats(value: Int.random(in: 2 ... 999), type: "Retweets")
								TwitStats(value: Int.random(in: 2 ... 999), type: "Likes")
							}
							.frame(maxWidth: .infinity, alignment: .leading)
							.withBottomShadow()
							.padding(.horizontal)

							ActionButtons()
						}
						.background(.white)
					}.background(.screenContainer)

					TwitReplyView()
				}
				.navigationBarBackButtonHidden()

				ShareTwitSheetView()
//					.background(ClearBackgroundView())
					.background(.black.opacity(0.5))
			}
//			.ignoresSafeArea(.all, edges: .all)
		}
	}

	//			MARK: - functions

	func RetwitBannerView() -> some View {
		HStack(alignment: .center) {
			Image("ic-retwit")
			Text("Elon Musk Retweeted")
				.foregroundStyle(.colorSecondary)
		}
		.frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
		.padding(.leading, 61)
		.padding(.top, 13)
	}

	func HeaderView() -> some View {
		HStack(alignment: .center) {
			Image(isMe ? "img-user-me" : "img-user-1")
				.resizable()
				.scaledToFit()
				.frame(width: 55, height: 55)
				.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

			VStack(alignment: .leading) {
				Text("Warren buffet")
					.title_3()
				Text("@wareen_b")
					.foregroundStyle(.colorSecondary)
			}
		}
		.frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
		.padding(.top, 12)
		.padding(.bottom, 24)
	}

	@available(iOS 17.0, *)
	func TwitDateTime() -> some View {
		Text("09:28 · 2/21/20")
			.foregroundStyle(.colorSecondary)
			+
			Text(" · Twitter Web App")
			.foregroundStyle(Color.accentColor)
	}

	func TwitStats(value: Int = 0, type: String = "") -> some View {
		return VStack {
			if value > 0 {
				HStack(spacing: 0) {
					Text("\(value) ")
						.title_3()
					Text(type)
						.foregroundStyle(.colorSecondary)
				}
				.frame(minHeight: 44, alignment: .leading)

			} else {
				/*@START_MENU_TOKEN@*/EmptyView() /// @END_MENU_TOKEN@
			}
		}
	}

	func ActionButtons() -> some View {
		HStack {
			Image("ic-comment")
				.frame(maxWidth: .infinity, alignment: .center)
			Image("ic-retwit")
				.frame(maxWidth: .infinity, alignment: .center)
			Image("ic-heart")
				.frame(maxWidth: .infinity, alignment: .center)
			Image("ic-share")
				.frame(maxWidth: .infinity, alignment: .center)
				.onTapGesture {
					showShare.toggle()
				}
		}
		.frame(maxWidth: .infinity, minHeight: 44, alignment: .center)
		.padding(.horizontal)
		.withBottomShadow()
	}

	func TwitReplyView() -> some View {
		HStack {
			Image("img-user-me")
				.resizable()
				.scaledToFit()
				.frame(width: 35, height: 35)
				.clipShape(Circle())

			HStack {
				TextField(isMe ? "Add another Twit" : "Twit your reply", text: $reply)
					.frame(height: 35)
					.padding(.horizontal, 12)
			}
			.frame(height: 35)
			.background(.colorSearchBar)
			.clipShape(Capsule())
		}
		.foregroundColor(.clear)
		.frame(height: 51.33)
		.padding(.horizontal)
		.background(.white)
		.shadow(color: Color(red: 0.74, green: 0.77, blue: 0.8), radius: 0, x: 0, y: -0.33)
//		.withBottomShadow(y: -0.33)
	}

	func ShareTwitSheetView() -> some View {
		VStack {
			if showShare {
				VStack {
					VStack {
						Spacer()
					}

					VStack {
						Rectangle()
							.foregroundColor(.clear)
							.frame(width: 36, height: 5)
							.background(Color(red: 0.91, green: 0.93, blue: 0.94))
							.cornerRadius(3)
							.padding(.vertical, 6)
						Label(
							title: { Text(" Retwit") },
							icon: { Image("ic-retwit") }
						)
						.frame(maxWidth: .infinity, maxHeight: 60, alignment: .leading)
						.onTapGesture {
							showShare.toggle()
						}
						.padding(.horizontal)

						Label(
							title: { Text(" Retwit with comment") },
							icon: { Image("ic-pen") }
						)
						.frame(maxWidth: .infinity, maxHeight: 60, alignment: .leading)
						.onTapGesture {
							showShare.toggle()
						}
						.padding(.horizontal)

						Button(action: /*@START_MENU_TOKEN@*/ {}/*@END_MENU_TOKEN@*/, label: {
							Text("Cancel")
								.foregroundStyle(Color.primary)
								.frame(maxWidth: .infinity, maxHeight: 48)
						})
						.secondaryButton()
						.padding(.horizontal)
					}
					.padding(.bottom, 27)
					.background(Color.white)
					.withCornerRadius(radius: 12, corners: [.topLeft, .topRight])
				}
				.contentShape(Rectangle())
				.onTapGesture {
					showShare.toggle()
				}
			} else {
				/*@START_MENU_TOKEN@*/EmptyView() /// @END_MENU_TOKEN@
			}
		}
		.ignoresSafeArea(.all, edges: .all)
	}
}

#Preview {
	TwitDetailView()
}
