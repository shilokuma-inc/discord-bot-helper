//
//  SendMessageViewModel.swift
//  discord-bot-helper
//
//  Created by 村石 拓海 on 2024/04/28.
//

import Foundation
import Alamofire

struct SendMessageViewModel {
    public func postDiscordWebhook(url: String, messageEntity: MessageEntity) {
        let baseUrlString = url
        let param: Parameters = {
            makeParameter(messageEntity: messageEntity)
        }()

        var request = URLRequest(url: (URL(string: baseUrlString) ?? URL(string: "https://www.apple.com/")!))
        request.httpMethod = HTTPMethod.post.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = NSString(
            // swiftlint:disable:next force_try
            data: try! JSONSerialization.data(withJSONObject: param as Any,
                                              options: JSONSerialization.WritingOptions.prettyPrinted
                                             ),
            encoding: String.Encoding.utf8.rawValue
        )!
            .data(using: String.Encoding.utf8.rawValue)
        print(request)
        AF.request(request)
        .responseData { response in
            switch response.result {
            case .success:
                print("success")
            case .failure:
                print("error")
            }
        }
    }
}

extension SendMessageViewModel {
    private func makeParameter(messageEntity: MessageEntity) -> Parameters {
        var param: Parameters
        if messageEntity.messageEmbedEntity.title.isEmpty {
            param = [
                "username": messageEntity.username.isEmpty ? "以下、名無しにかわりましてVIPがお送りします" : messageEntity.username,
                "avatar_url": messageEntity.avatarURL,
                "content": messageEntity.content.isEmpty ? "なんか書いてね" : messageEntity.content
            ]
        } else {
            param = [
                "username": messageEntity.username.isEmpty ? "以下、名無しにかわりましてVIPがお送りします" : messageEntity.username,
                "avatar_url": messageEntity.avatarURL,
                "content": messageEntity.content.isEmpty ? "なんか書いてね" : messageEntity.content,
                "embeds": [
                    [
                        "title": messageEntity.messageEmbedEntity.title
                    ]
                ]
            ]
        }
        return param
    }
}
