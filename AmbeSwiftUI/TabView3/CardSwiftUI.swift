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
    @State var color = Color(.systemGray4)
    @State var cardRotation = 0.0
    @State var contentRotation = 0.0
    @State var cardIsSwiped = false
    @State var quizIsFinished = false
    @State var isSwiped = false
    
    @Binding var isFlipped: Bool
    @Binding var indexOf: Int
    @Binding var rightCards: Int
    @Binding var wrongCards: Int

    let imageName: String
    
    var body: some View {
            ZStack {
                Rectangle()
                    .disabled(quizIsFinished)
                    .frame(width: 300, height:200)
                    .cornerRadius(20)
                    .foregroundColor(color)
                Text(stuff.cardWord)
                    .bold()
                    .font(.title2)
                    .foregroundColor(.black)
                    .bold()
                if !isFlipped {
                    Image(systemName: "eye.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                        .offset(x: 110, y: -65)
                } else {
                    Image(systemName: imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white).opacity(0.8)
                        .offset(x: 110, y: -65)
                }
                Text("Знаю")
                    .offset(x:100, y: 60)
                    .foregroundColor(.white)
                Image(systemName: "hand.draw")
                    .resizable()
                    .foregroundColor(.white).opacity(0.5)
                    .frame(width: 30, height: 30)
                    .offset(x:10, y: 60)
                Text("Не знаю")
                    .foregroundColor(.white)
                    .offset(x:-90, y: 60)
            }
            .rotation3DEffect(.degrees(cardRotation), axis: (x: 0, y: 1, z: 0))
            
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
            self.indexOf += 1
        case 150...500:
            offset = CGSize(width: 500, height: 0)
            self.indexOf += 1
            self.rightCards += 1
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
            color = Color(.systemGray4)
        }
    }
}
   
struct CardSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        CardSwiftUI(words: ["hello":"hello"], stuff: Stuff(), isFlipped: .constant(true), indexOf: .constant(0) , rightCards: .constant(0) , wrongCards: .constant(0), imageName: "eye" )
    }
}
