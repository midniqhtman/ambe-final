//
//  TextsSwiftUIView.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 12.01.2023.
//

import SwiftUI

struct TextsSwiftUIView: View {
    var texts = Texts.getTexts()
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    EmbedView(videoID: "l9updbL58xY")
                        .frame(width:geometry.size.width, height: 200)
                        .background(Color.white)
                    
                    List(texts) { text in
                        NavigationLink(destination: FullTextSwiftUIView(text: text)) {
                            Text(text.title)
                        }
                        .foregroundColor(.black).bold()
                        .listRowBackground(Color(.systemGray5))
                        .listRowSeparator(.visible)
                    }
                    .navigationTitle("Тексты")
                }
            }
        }
    }
}

struct TextsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TextsSwiftUIView()
    }
}
