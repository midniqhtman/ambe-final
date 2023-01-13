//
//  EmbedSwiftUIView.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 07.01.2023.
//

import SwiftUI
import WebKit

struct EmbedSwiftUIView: View {
    
    
    var body: some View {
        EmbedFrameView(topic: Topic.getTopics().randomElement()!)
    }
    
}

struct EmbedSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        EmbedSwiftUIView()
    }
}

struct EmbedView: UIViewRepresentable {
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/watch?v=\(videoID)") else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}


