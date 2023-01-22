//
//  QuizSwiftUI.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 20.01.2023.
//

import SwiftUI

struct QuizSwiftUI: View {
    @StateObject var stuff = Stuff()
    
    let words: [String : String]
    
    var learnedWordsCount = 0
    
    @State var offset = CGSize.zero
    @State var color = Color.cyan
    
    @State var quizIsFinished = false
    @State var isFlipped = false
    @State var cardRotation = 0.0
    @State var contentRotation = 0.0
    
    @State var translateIsShow = false
    @State var indexOf = 0
    @State var keyWord: String
    @State var valueWord: String
    @State var cardWord: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrowshape.left.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.red)
                Text("Если не знаешь смахни влево").font(.title2)
            }
            ZStack {
                ForEach(words.sorted(by: <), id: \.key) { word, translation in
                    CardSwiftUI(words: words, stuff: stuff,translateIsShow: translateIsShow, indexOf: indexOf, keyWord: keyWord, valueWord: valueWord, cardWord: cardWord)
                        .onTapGesture {
                        flipCard()
                        translateIsShow.toggle()
                        setupCard()
                            
                    }
                        .rotation3DEffect(.degrees(contentRotation), axis: (x: 0, y: 1, z: 0))
                        .rotation3DEffect(.degrees(cardRotation), axis: (x: 0, y: 1, z: 0))
                }
            }
            HStack{
                Text("Если знаешь смахни вправо").font(.title2)
                Image(systemName: "arrowshape.right.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.green)
            }
        }.onAppear {
            setWordsIndexes()
            setupCard()
    }
    }
        
        func nextCard() {
            setWordsIndexes()
            setupCard()
        }
        
        func setWordsIndexes() {
            words.sorted(by: <)
            if indexOf < words.keys.count {
                keyWord = Array(words.keys)[indexOf]
                valueWord = Array(words.values)[indexOf]
                quizIsFinished = false
            } else {
                indexOf = 0
                keyWord = "Проверь себя"
            }
            setupCard()
        }
        
        func setupCard() {
            if translateIsShow == true {
                stuff.cardWord = valueWord
            } else {
                stuff.cardWord = keyWord
            }
        }
    func flipCard() {
        withAnimation(Animation.linear(duration: 0.3)) {
            cardRotation += 180
            isFlipped.toggle()
        }
        
        withAnimation(Animation.linear(duration: 0.001)) {
            contentRotation += 180
            isFlipped.toggle()
        }
    }
}
  
    struct QuizSwiftUI_Previews: PreviewProvider {
        static var previews: some View {
            QuizSwiftUI(words:["Zubair" : "Зубайр"], keyWord: "", valueWord: "", cardWord: "")
        }
    }
    

