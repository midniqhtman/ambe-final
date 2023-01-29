//
//  CardSwiftUI.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 21.01.2023.
//

import SwiftUI

struct CardSwiftUI: View {
    let words: [String : String]
    
    @ObservedObject var stuff: Stuff
   
    @State var offset = CGSize.zero
    @State var color = Color.cyan
    @State var cardRotation = 0.0
    @State var contentRotation = 0.0
    @State var cardIsSwiped = false
    
    @State var quizIsFinished = false
    @State var isFlipped = false
    @State var isSwiped = false
    @Binding var indexOf: Int
    
    @Binding var rightCards: Int
    @Binding var wrongCards: Int


    
    var body: some View {
        ZStack {
            Rectangle()
                .disabled(quizIsFinished)
                .frame(width: 300, height:200)
                .cornerRadius(20)
                .foregroundColor(color)
                .shadow(color: .gray, radius: 4)
            Text(stuff.cardWord)
                .bold()
                .font(.largeTitle)
                .foregroundColor(.white)
                .bold()
                .font(.largeTitle)
                .foregroundColor(.white)
                .shadow(color: .white, radius: 4)
        }                .rotation3DEffect(.degrees(cardRotation), axis: (x: 0, y: 1, z: 0))
        
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
                        self.rightCards += 1
                        swipeCard(width: offset.width)
                        print(rightCards)
                    }
                }
                
        )
    }
    
    func swipeCard(width: CGFloat) {
        switch width {
        case -500...(-150):
            offset = CGSize(width: -500, height: 0)
            self.indexOf += 1
        case 150...500:
            offset = CGSize(width: 500, height: 0)
            self.indexOf += 1
        default:
            offset = .zero
        }
        
    }
    
    func changeColor(width: CGFloat) {
        switch width {
        case -500...(-150):
            color = .red
            if isSwiped == true {
                stuff.setWordsIndexes(words: words)
                stuff.setupCard()
            }
        case 150...500:
            color = .green
            if isSwiped == true {
                stuff.setWordsIndexes(words: words)
                stuff.setupCard()
            }
        default:
            color = .cyan
        }
    }
}


//struct CardSwiftUI_Previews: PreviewProvider {
//    static var previews: some View {
//        CardSwiftUI(words: ["hello":"privet"], stuff: self.stuff, indexOf: self.stuff.indexOf, rightCards: self.stuff.rightCards, wrongCards: self.stuff.wrongCards)
//    }
//}
