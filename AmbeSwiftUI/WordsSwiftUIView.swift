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
        NavigationView {
            VStack {
                    List {
                        ForEach(words.sorted(by: < ), id: \.key) { key, value in
                            HStack {
                                Text(value)
                                Spacer()
                                Text(key)
                            }
                        }
                    }
                Spacer()
                    Button(action: startWords) {
                        Text("Start")
                            .frame(width: 100, height: 50)
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .clipShape(Capsule())
                    }.fullScreenCover(isPresented: $isPresented) {
                        QuizSwiftUIView(quizWords: words)
                    
                }
            }
            .navigationTitle("Learn the words, bro")
        }
    }
    func startWords() {
        isPresented.toggle()
        goesToDetail = true
    }
    }


struct WordsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        WordsSwiftUIView(words: ["hello":"привет"])
    }
}
