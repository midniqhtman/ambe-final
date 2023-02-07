//
//  QuizSwiftUI.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 20.01.2023.
//

import SwiftUI
import Combine

class Stuff: ObservableObject  {
    let objectWillChange = PassthroughSubject<Stuff, Never>()
    @Published var cardWord = ""
    @Published var translateIsShow = false
    @Published var keyWord = ""
    @Published var valueWord = ""
    @Published var indexOf = 0
    @Published var quizIsFinished = false
    
    @Published var rightCards = 0
    @Published var wrongCards = 0

    func setWordsIndexes(words: [String:String]) {
        words.sorted(by: <)
        if indexOf < words.keys.count {
            keyWord = Array(words.keys)[indexOf]
            valueWord = Array(words.values)[indexOf]
            quizIsFinished = false
            setupCard()
        } else {
            indexOf = 0
        }
    }
    
    func setupCard() {
        if translateIsShow == true {
            cardWord = valueWord
        } else {
            cardWord = keyWord
        }
        objectWillChange.send(self)
    }
}


struct QuizSwiftUI: View {
    @StateObject var stuff = Stuff()
    
    @State var words: [String : String]
    
    var learnedWordsCount = 0
    
    @State var offset = CGSize.zero
    @State var color = Color.cyan
    @State var isFlipped = false
    @State var cardRotation = 0.0
    @State var contentRotation = 0.0
    @State var cardWord: String
    
    var body: some View {
        VStack {
            Button("next") {
                stuff.setWordsIndexes(words: words)
            }
            HStack {
                Image(systemName: "arrowshape.left.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.red)
                Text("Если не знаешь смахни влево").font(.title2)
            }
            ZStack {
                Text("\(stuff.rightCards) правильных ответов из \(words.count)")
                
                ForEach(words.sorted(by: <), id: \.key) { word, translation in
                    CardSwiftUI(words: words,
                                stuff: stuff,
                                indexOf: $stuff.indexOf,
                                rightCards: $stuff.rightCards,
                                wrongCards: $stuff.wrongCards)
                        .onTapGesture {
                            print(stuff.indexOf)
                        flipCard()
                            stuff.translateIsShow.toggle()
                            stuff.setupCard()
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
            stuff.setWordsIndexes(words: words)
        }
    }
        
        func nextCard() {
            stuff.setWordsIndexes(words: words)
            stuff.setupCard()
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
            QuizSwiftUI(words:["Zubair" : "Зубайр"], cardWord: "")
        }
    }
    

