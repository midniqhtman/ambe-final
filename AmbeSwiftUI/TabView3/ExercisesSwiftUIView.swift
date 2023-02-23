//
//  ExercisesSwiftUIView.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 12.01.2023.
//

import SwiftUI

struct ExercisesSwiftUIView: View {
    let topics = Words.getWords()
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ] // You can customize the number of columns here
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(topics) { topic in
                        NavigationLink(destination: WordsSwiftUIView(words: topic.theme, title: topic.title)) {
                            VStack {
                                Image(topic.title)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                
                                Text(topic.title)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Слова")
        }
    }
}


struct ExercisesSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesSwiftUIView()
    }
}
