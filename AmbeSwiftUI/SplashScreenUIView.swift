//
//  SplashScreenUIView.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 23.02.2023.
//

import SwiftUI

struct SplashScreenUIView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("baloon")
                        .resizable()
                        .frame(width: 170, height: 220)
                        .foregroundColor(.red)
                    Text("Deshar School")
                        .font(.title2)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 1.6
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreenUIView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenUIView()
    }
}
