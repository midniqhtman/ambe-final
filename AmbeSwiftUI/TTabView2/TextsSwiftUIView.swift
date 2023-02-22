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
                VStack {
                    EmbedView(videoID: "l9updbL58xY")
                        .cornerRadius(20)
                        .frame(height: 300)
                        .padding()
                        .background(Color.cyan)
                    
                    List(texts) { text in
                        NavigationLink(destination: FullTextSwiftUIView(text: text)) {
                            Text(text.title)
                        }
                        .foregroundColor(.white).bold().shadow(color: .white, radius: 4)
                        .listRowBackground(Color.cyan)
                        .listRowSeparator(.visible)
                    }
                    .navigationTitle("Тексты")
                }
            }
        }
    }

struct TextsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TextsSwiftUIView()
    }
}
