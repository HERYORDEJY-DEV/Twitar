//
//  TwitItemModel.swift
//  Twitar
//
//  Created by  OYEBODE YUSUF AYODEJI on 10/1/23.
//

import Foundation

struct TwitItemUserModel: Identifiable {
	var id: UUID
	var displayname: String
	var username: String
	var isVerified: Bool
	var photo: String
}

struct TwitItemCommentModel: Identifiable {
	var id: UUID
	var author: TwitItemUserModel
	var dateTime: Date
	var content: String
}

struct TwititemStats {
	var comments: [TwitItemCommentModel]
	var retweets: [TwitItemUserModel]
	var likes: [TwitItemUserModel]
	var activities: Int
}

struct TwitItemContentModel {
	var text: String
	var attachments: [URL]
}

struct TwitItemModel: Identifiable {
	var id: UUID
	var author: TwitItemUserModel
	var dateTime: Date
	var stats: TwititemStats
}

var TwitItemData: [TwitItemModel] = [
	TwitItemModel(id: UUID(),
	              author: TwitItemUserModel(id: UUID(), displayname: "Martha Craig", username: "craig_love", isVerified: false, photo: "img-user1"),
	              dateTime: Date(),
	              stats: TwititemStats(
	              	comments: [
	              		TwitItemCommentModel(
	              			id: UUID(),
	              			author: TwitItemUserModel(id: UUID(), displayname: "Elon Musk parody", username: "elonmusk", isVerified: true, photo: "img-user-3"),
	              			dateTime: Date(),
	              			content: "UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability")
	              	],
	              	retweets: [],
	              	likes: [],
	              	activities: Int.random(in: 0 ... 999)))
]

let twitUsersData: [TwitItemUserModel] = [
	TwitItemUserModel(id: UUID(), displayname: "Warren Buffet", username: "warren_b", isVerified: true, photo: "\(Int.random(in: 1 ... 5))"),
	TwitItemUserModel(id: UUID(), displayname: "Jeff Bezos", username: "bezosjeff", isVerified: Int.random(in: 0 ... 1) == 1 ? false : true, photo: "\(Int.random(in: 1 ... 5))"),
	TwitItemUserModel(id: UUID(), displayname: "Jack Cuban", username: "jack_jack", isVerified: Int.random(in: 0 ... 1) == 1 ? false : true, photo: "\(Int.random(in: 1 ... 5))"),
	TwitItemUserModel(id: UUID(), displayname: "Taylor Swift", username: "swiftmusic", isVerified: Int.random(in: 0 ... 1) == 1 ? false : true, photo: "\(Int.random(in: 1 ... 5))"),
	TwitItemUserModel(id: UUID(), displayname: "Winfrey Oprah", username: "winfrey12", isVerified: Int.random(in: 0 ... 1) == 1 ? false : true, photo: "\(Int.random(in: 1 ... 5))"),
	TwitItemUserModel(id: UUID(), displayname: "Jack Dorsey", username: "dorsey0jack", isVerified: Int.random(in: 0 ... 1) == 1 ? false : true, photo: "\(Int.random(in: 1 ... 5))"),
	TwitItemUserModel(id: UUID(), displayname: "Aliko Dangote", username: "dangote", isVerified: Int.random(in: 0 ... 1) == 1 ? false : true, photo: "\(Int.random(in: 1 ... 5))"),
	TwitItemUserModel(id: UUID(), displayname: "Robert Kiyosaki", username: "robert.k", isVerified: Int.random(in: 0 ... 1) == 1 ? false : true, photo: "\(Int.random(in: 1 ... 5))"),
	TwitItemUserModel(id: UUID(), displayname: "Lionel Messi", username: "leo.messi", isVerified: Int.random(in: 0 ... 1) == 1 ? false : true, photo: "\(Int.random(in: 1 ... 5))"),
	TwitItemUserModel(id: UUID(), displayname: "Cristiano Ronaldo", username: "CR7", isVerified: Int.random(in: 0 ... 1) == 1 ? false : true, photo: "\(Int.random(in: 1 ... 5))")
]
