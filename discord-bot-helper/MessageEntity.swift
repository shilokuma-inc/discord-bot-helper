//
//  MessageEntity.swift
//  discord-bot-helper
//
//  Created by 村石 拓海 on 2024/04/28.
//

import Foundation

struct MessageEntity {
    var username: String
    var avatarURL: String
    var content: String
    var messageEmbedEntity: MessageEmbedEntity

    init(username: String, avatarURL: String, content: String, messageEmbedEntity: MessageEmbedEntity) {
        self.username = username
        self.avatarURL = avatarURL
        self.content = content
        self.messageEmbedEntity = messageEmbedEntity
    }
}

struct MessageEmbedEntity {
    var title: String

    init(title: String) {
        self.title = title
    }
}
