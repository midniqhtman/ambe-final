//
//  ExercisesSwiftUIView.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 12.01.2023.
//

import SwiftUI

struct ExercisesSwiftUIView: View {
    let topics = Words.getWords()
    var body: some View {
        NavigationView {
            List(topics) { topic in
                NavigationLink(destination: WordsSwiftUIView(words: topic.theme, title: topic.title)) {
                    Text(topic.title)
                    
                }
            }
            .navigationTitle("Words")
        }
    }
}

struct ExercisesSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesSwiftUIView()
    }
}
