//
//  FullTextSwiftUIView.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 12.01.2023.
//

import SwiftUI

struct FullTextSwiftUIView: View {
    var text: Texts
    
    var body: some View {
        VStack {
            Text(text.title).font(.largeTitle).bold().foregroundColor(.black)
            
            Text(text.mainText.rawValue).bold()
                .padding()
                .frame()
                .background(.cyan)
                .foregroundColor(.white)
                .cornerRadius(20)
                .padding()
                Button(action: startRecord, label: {
                    Label("Play", systemImage: "play")
                })
                .buttonStyle(GrowingButton())
            }
        }
    func startRecord() {
        
    }
}


struct FullTextSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FullTextSwiftUIView(text: Texts.getTexts().randomElement()!)
    }
}

struct GrowingButton: ButtonStyle {
 func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.orange)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
