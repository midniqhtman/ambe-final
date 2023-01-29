//
//  TopicsSwiftUI.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 02.01.2023.
//

import SwiftUI
import WebKit

struct TopicsSwiftUI: View {
    var topic: Topic
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    EmbedFrameView(topic: topic)
                    HStack {
                        Spacer()
                        Text(topic.topicDescription.rawValue)
                            .padding()
                            .foregroundColor(.white)
                            .bold()
                            .background(Color.cyan)
                            .cornerRadius(geometry.size.height * 0.05)
                            .shadow(color: .cyan, radius: 10)
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Text(topic.importantStuff.rawValue)
                            .padding()
                            .foregroundColor(.black)
                            .bold()
                            .background(Color.yellow)
                            .cornerRadius(geometry.size.height * 0.05)
                            .shadow(color: .cyan, radius: 10)
                        Spacer()
                    }
                }
            }
        }
    }
}

struct TopicsSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        TopicsSwiftUI(topic: Topic.getTopics().randomElement()! )
    }
}

struct EmbedFrameView: View {
        var topic: Topic
        var body: some View {
            VStack {
                HStack {
                    VStack {
                        EmbedView(videoID: topic.youtubeurl.rawValue)
                            .frame(width: 360, height: 200, alignment: .leading)
                            .cornerRadius(20)
                    }
                }
                .cornerRadius(15)
            }
        }
    }

