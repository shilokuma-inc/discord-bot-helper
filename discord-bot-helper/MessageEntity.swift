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
    
    init(username: String, avatarURL: String, content: String) {
        self.username = username
        self.avatarURL = avatarURL
        self.content = content
    }
}
