//
//  WordsSwiftUIView.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 13.01.2023.
//

import SwiftUI

struct WordsSwiftUIView: View {
    @State private var goesToDetail: Bool = false
    @State private var isPresented = false
    let words: [String : String]
    var body: some View {
            VStack {
                Text("Words").font(.largeTitle).bold()
                EmbedView(videoID: "CzPEAe8Q_Yg&t=188s")
                    .frame(width: 360, height: 200, alignment: .leading)
                    .cornerRadius(20)
                List {
                    ForEach(words.sorted(by: < ), id: \.key) { key, value in
                        HStack {
                            Text(key)
                            Spacer()
                            Text(value)
                        }
                    }
                }
                NavigationLink(destination: QuizSwiftUI(words: words, cardWord: ""), isActive: $goesToDetail) {
                    Button("StartQuiz") {
                      goesToDetail = true
                    }.buttonStyle(GrowingButton())
                }
            }
        }

    }



struct WordsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        WordsSwiftUIView(words: ["hello":"привет"])
    }
}
