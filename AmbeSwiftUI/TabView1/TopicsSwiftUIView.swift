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
                        .frame(width: geometry.size.width, height: 250)
                    EmbedView(videoID: topic.youtubeurl.rawValue)
                    Text(topic.title).font(.title2).bold()
                        .frame(maxWidth:.infinity, alignment: .leading)
                        .padding(.leading, 25)
                    HStack {
                        Spacer()
                        Text(topic.topicDescription.rawValue)
                            .font(.system(size: 20))
                            .frame(maxWidth:.infinity, alignment: .leading)
                            .padding(25)
                            .foregroundColor(.black)
                        Spacer()
                    }
                    Text("Важно").font(.title2).bold()
                        .frame(maxWidth:.infinity, alignment: .leading)
                        .padding(.leading, 25)
                    HStack {
                        Text(topic.importantStuff.rawValue)
                            .font(.system(size: 20))
                            .frame(maxWidth:.infinity, alignment: .leading)
                            .padding(.leading, 25).padding(.top, 10)
                            .foregroundColor(.black)
                    }
                }
                .background(Color(.systemGray6))
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
            EmbedView(videoID: topic.youtubeurl.rawValue)
        }
    }
}
    

