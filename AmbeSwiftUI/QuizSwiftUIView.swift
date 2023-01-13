//
//  QuizSwiftUIView.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 13.01.2023.
//

import SwiftUI

struct QuizSwiftUIView: View {
    var quizWords: [String : String]
    var indexForQuiz = 0
    var body: some View {
        HStack {
            ForEach(quizWords.sorted(by: <), id: \.key) { key, value in
                VStack {
                    ZStack {
                        Rectangle().foregroundColor(Color.cyan).frame(width: 200, height: 100)
                            .cornerRadius(20)
                        Text(quizWords.keys.first!).foregroundColor(.white).bold().font(Font.title)
                    }
                }
            }
        }
    }
}

struct QuizSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        QuizSwiftUIView(quizWords: ["hello" : "hello"])
    }
}
