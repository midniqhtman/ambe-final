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
    
    func changeColor(width: CGFloat) {
        switch width {
        case -500...(-150):
            color = .red
        case 150...500:
            color = .green
        default:
            color = .cyan
        }
    }
}


struct CardSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        CardSwiftUI(words: ["hello": "privet"], keyWord: "da", valueWord: "net", cardWord: "danet")
    }
}
