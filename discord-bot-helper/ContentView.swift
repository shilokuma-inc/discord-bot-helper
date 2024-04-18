//
//  ContentView.swift
//  discord-bot-helper
//
//  Created by 村石 拓海 on 2024/04/17.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    
    @State var inputName = ""
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            TextField("URLを入れてください", text: $inputName)
            Button(action: {
                postDiscordWebhook(url: inputName)
            }, label: {
                Text("Send")
            })
        }
        .padding()
    }
}

private func postDiscordWebhook(url: String) {
    let baseUrlString = url
    let param: Parameters = [
            "content": "Hello"
        ]
    let headers: HTTPHeaders = ["Content-Type": "application/json"]

    
    var request = URLRequest(url: (URL(string: baseUrlString) ?? URL(string: "https://www.apple.com/")!))
    request.httpMethod = HTTPMethod.post.rawValue
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpBody = NSString(
        data: try! JSONSerialization.data(withJSONObject: param as Any, 
                                          options:JSONSerialization.WritingOptions.prettyPrinted
                                         ),
        encoding: String.Encoding.utf8.rawValue
    )!
        .data(using: String.Encoding.utf8.rawValue)
    AF.request(request)
    .responseData { response in
        switch response.result {
            case .success(let data):
                print("success")
            case .failure(let error):
                print("error")
        }
    }
}

#Preview {
    ContentView()
}
