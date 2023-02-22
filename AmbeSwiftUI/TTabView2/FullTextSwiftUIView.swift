//
//  FullTextSwiftUIView.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 12.01.2023.
//

import SwiftUI
import AVFoundation


struct FullTextSwiftUIView: View {
    var text: Texts
    
    @State var player: AVAudioPlayer!
    @State var progress = 0.0
    @State var isPlaying = false
    @State var textIsShown = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text(text.title).font(.largeTitle).bold().foregroundColor(.black)
                
                Text(text.mainText.rawValue).bold()
                    .padding()
                    .background(.cyan)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .padding()
                
                Button(action: {
                    withAnimation { self.textIsShown.toggle()}}) {
                    if textIsShown {
                        Text("Скрыть перевод")
                    } else {
                        Text("Показать перевод")
                    }
                }
                if textIsShown {
                    withAnimation {
                        Text(text.translation.rawValue)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding()
                            .bold()
                            .opacity(textIsShown ? 1 : 0)
                    }.animation(.easeIn(duration: 1))
                }
                
                Button(action: { self.startRecord(audioUrl: text.audioRecord.rawValue) },
                       label: {
                    if isPlaying == false {
                        Label("Play", systemImage: "play")
                    } else {
                        Label("Pause", systemImage: "pause")
                    }
                }
                )
                
                
                .buttonStyle(GrowingButton())
                Slider(value: $progress, in: 0...100, onEditingChanged: {_ in
                    player.currentTime = Double(self.progress) / 100.0 * player.duration
                }).padding([.leading, .trailing])
            }
            
        }
        .onDisappear {
            if player != nil {
                player.stop() }
        }
    }
    func startRecord(audioUrl: String) {
        let url = Bundle.main.url(forResource: audioUrl, withExtension: "m4a")
        
        guard url != nil else {
            print("error 405")
            return
        }
        if player == nil {
            do {
                player = try AVAudioPlayer(contentsOf: url!)
                Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                    self.progress = player.currentTime / player.duration * 100.0
                    if !self.isPlaying {
                        timer.invalidate()
                    }
                }
            }
            catch {
                print("error 404")
            }
        }
            if isPlaying {
                player.pause()
            } else {
                player.play()
            }
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                  self.progress = player.currentTime / player.duration * 100.0
                  if !self.isPlaying {
                      timer.invalidate()
                  }
              }
        isPlaying.toggle()

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
