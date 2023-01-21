//
//  CardSwiftUI.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 21.01.2023.
//

import SwiftUI

struct CardSwiftUI: View {
    var word: String
    
    @State var offset = CGSize.zero
    @State var color = Color.cyan
    
    var body: some View {
        ZStack {
            Rectangle()
            
            
                .frame(width: 300, height:200)
                .cornerRadius(20)
                .foregroundColor(color)
                .shadow(color: .gray, radius: 20)
            Text(word)
                .rotation3DEffect(.degrees(CGFloat(0.0)), axis: (x: 0, y: 1, z: 0))
                .bold()
                .font(.largeTitle)
                .foregroundColor(.white)
                .shadow(color: .white, radius: 20)
        }
        .offset(x: offset.width, y: offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    offset = gesture.translation
                    withAnimation {
                        changeColor(width: offset.width)
                    }
                } .onEnded { _ in
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
        case -500...(-80):
            color = .red
        case 80...500:
            color = .green
        default:
            color = .cyan
        }
    }
    }


struct CardSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        CardSwiftUI(word: "The word")
    }
}
