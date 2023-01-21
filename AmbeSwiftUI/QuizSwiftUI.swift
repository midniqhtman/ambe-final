//
//  QuizSwiftUI.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 20.01.2023.
//

import SwiftUI

class Stuff: ObservableObject  {
    @Published var cardWord = ""
    
}

struct QuizSwiftUI: View {
    @StateObject var stuff = Stuff()
    
    let words: [String : String]
    
    
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
            Button("show translation") {
//                showTranslate()
                print(words)
            }
            
            Button("show word") {
                setWordsIndexes()
            }
            
            HStack {
                Image(systemName: "arrowshape.left.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.red)
                Text("Если не знаешь смахни влево").font(.title2)
            }
            
            ZStack {
                Rectangle()
                    .shadow(color: .black, radius: 20)
                    .onTapGesture {
                        flipCard()
                    translateIsShow.toggle()
                    setupCard()
                }
                    .frame(width: 300, height:200)
                    .cornerRadius(20)
                    .foregroundColor(.cyan)
                Text(stuff.cardWord)
                    .rotation3DEffect(.degrees(contentRotation), axis: (x: 0, y: 1, z: 0))
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            .rotation3DEffect(.degrees(cardRotation), axis: (x: 0, y: 1, z: 0))
            
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
    func flipCard() {
        let animationTime = 0.5
        
        withAnimation(Animation.linear(duration: 0.3)) {
            cardRotation += 180
            isFlipped.toggle()
        }
        
        withAnimation(Animation.linear(duration: 0.001).delay(animationTime / 2)) {
            contentRotation += 180
            isFlipped.toggle()
        }
    }
    
    func setWordsIndexes() {
        words.sorted(by: <)
        if indexOf < words.keys.count {
            keyWord = Array(words.keys)[indexOf]
            valueWord = Array(words.values)[indexOf]
            indexOf += 1
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
    
    
    struct QuizSwiftUI_Previews: PreviewProvider {
        static var previews: some View {
            QuizSwiftUI(words:["Zubair" : "Зубайр"], keyWord: "", valueWord: "", cardWord: "")
        }
    }
    
}
