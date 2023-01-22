//
//  CardSwiftUI.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 21.01.2023.
//

import SwiftUI
class Stuff: ObservableObject  {
    @Published var cardWord = ""
}

struct CardSwiftUI: View {
    let words: [String : String]

    @StateObject var stuff = Stuff()
   
    @State var offset = CGSize.zero
    @State var color = Color.cyan
    @State var indexOfSwipedCard = 0
    @State var cardRotation = 0.0
    @State var contentRotation = 0.0

    @State var cardIsSwiped = false
    
    @State var quizIsFinished = false
    @State var isFlipped = false
    @State var isSwiped = false
    @State var translateIsShow = false
    @State var indexOf = 0
    @State var keyWord: String
    @State var valueWord: String
    @State var cardWord: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .onTapGesture {
                    flipCard()
                    translateIsShow.toggle()
                    setupCard()
                }.disabled(quizIsFinished)
                .frame(width: 300, height:200)
                .cornerRadius(20)
                .foregroundColor(color)
                .shadow(color: .gray, radius: 4)
            Text(stuff.cardWord)
                .bold()
                .font(.largeTitle)
                .foregroundColor(.white)
                .rotation3DEffect(.degrees(contentRotation), axis: (x: 0, y: 1, z: 0))
                .bold()
                .font(.largeTitle)
                .foregroundColor(.white)
                .shadow(color: .white, radius: 4)
        }                .rotation3DEffect(.degrees(cardRotation), axis: (x: 0, y: 1, z: 0))

        .onAppear {
            setWordsIndexes()
            setupCard()
        }
        
        .offset(x: offset.width, y: offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    isSwiped = true
                    offset = gesture.translation
                    withAnimation {
                        changeColor(width: offset.width)
                    }
                }.onEnded { _ in
                    withAnimation {
                        swipeCard(width: offset.width)
                    }
                }
        )
    }
    
    func swipeCard(width: CGFloat) {
        switch width {
        case -500...(-150):
            offset = CGSize(width: -500, height: 0)
        case 150...500:
            offset = CGSize(width: 500, height: 0)
        default:
            offset = .zero
        }
    }
    
    func nextCard() {
        if isSwiped {
            indexOf += 1
            setWordsIndexes()
            setupCard()
        }
    }
    
    func changeColor(width: CGFloat) {
        switch width {
        case -500...(-80):
            color = .red
        case 80...500:
            color = .green
        default:
            color = .cyan
        }
    }
    
    func setWordsIndexes() {
        words.sorted(by: <)
        if indexOf < words.keys.count {
            keyWord = Array(words.keys)[indexOf]
            valueWord = Array(words.values)[indexOf]
            indexOf += 1
            quizIsFinished = false
        } else {
            indexOf = 0
            keyWord = "Проверь себя"
        }
        setupCard()
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
    
    func setupCard() {
        if translateIsShow == true {
            stuff.cardWord = valueWord
        } else {
            stuff.cardWord = keyWord
        }
    }
    
 
    }


struct CardSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        CardSwiftUI(words: ["hello": "privet"], keyWord: "da", valueWord: "net", cardWord: "danet")
    }
}
