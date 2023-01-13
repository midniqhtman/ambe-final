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
        VStack {
            NavigationView {
                List(texts) { text in
                    NavigationLink(destination: FullTextSwiftUIView(text: text.mainText.rawValue)) {
                            Text(text.title)
                    }
                }
                .navigationTitle("Texts")
            }
        }
    }
}

struct TextsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TextsSwiftUIView()
    }
}
