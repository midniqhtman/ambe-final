//
//  WordsSwiftUIView.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 13.01.2023.
//

import SwiftUI
import AVFoundation

struct WordsSwiftUIView: View {
    @State var player: AVAudioPlayer!
    @State var progress = 0.0
    @State var isPlaying = false
    
    @State private var goesToDetail = false
    @State private var isPresented = false
    
    let words: [String : String]
    let title: String
    
    var body: some View {
            VStack {
                Text(title).font(.largeTitle).bold()
//                EmbedView(videoID: "CzPEAe8Q_Yg&t=188s")
//                    .frame(width: 360, height: 200, alignment: .leading)
                    .cornerRadius(20)
                Button(action: { self.startRecord(audioUrl: title) },
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
                
                List {
                    ForEach(words.sorted(by: < ), id: \.key) { key, value in
                        HStack {
                            Text(key)
                            Spacer()
                            Text(value)
                        }
                    }
                }
                NavigationLink(destination: QuizSwiftUI(words: words, cardWord: "", title: title), isActive: $goesToDetail) {
                    Button("StartQuiz") {
                      goesToDetail = true
                    }.buttonStyle(GrowingButton())
                }
            }.onDisappear {
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



struct WordsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        WordsSwiftUIView(words: ["hello":"привет"], title: "Job")
    }
}
