//
//  ContentView.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 01.01.2023.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    
    let moduls = Topic.getTopics()
    
    @State private var isShowAlert = false
    @State private var inputText = ""
    @State private var isActive = [Bool](repeating: false, count: Topic.getTopics().count)
    let promoCode = "Zubair"
 
    var body: some View {
            TabView {
                VStack {
                    NavigationView {
                        List(moduls) { modul in
                                VStack {
                                    NavigationLink(destination: TopicsSwiftUI(topic: modul), isActive: self.$isActive[modul.id]) {
                                        VStack {
                                            ZStack {
                                                Rectangle()
                                                    .frame(height: 80)
                                                    .cornerRadius(20)
                                                    .foregroundColor(.blue)
                                                    .shadow(color: .black, radius: 5)
                                                Text("Урок" +  " \(modul.id + 1)." + " " + modul.title)
                                                    .foregroundColor(.white).bold().font(Font.title2)
                                                    .navigationBarTitle("Beginner's course")
                                                
                                            }
                                        }
                                    }
                                }.buttonStyle(PlainButtonStyle())
                                .disabled(modul.id >= 3 && inputText != promoCode)
                                .onTapGesture {
                                    
                                    if modul.id < 3 {
                                        self.isActive[modul.id] = true
                                      } else if inputText == self.promoCode {
                                          self.isActive[modul.id] = true
                                      } else {
                                          self.isShowAlert = true
                                      }
                                }
                            }
                        .listStyle(.plain)
                        .navigationBarItems(trailing: Button(action: {
                            print($inputText)
                            self.isShowAlert = true
                            let realm = try! Realm()
                            try! realm.write {
                                let inputText = TextObject()
                                inputText.promoCode = self.inputText
                                realm.add(inputText)
                            }
                        }) {
                            Text("Ввести код")
                            }
                        ).bold()
                        
                        .navigationBarItems(leading: Button(action: {
                          guard let url = URL(string: "https://www.instagram.com/") else { return }
                          UIApplication.shared.open(url)
                        }) {
                            Text("Получить код").bold()
                        })
                    }
                    .alert( "Введите ваш промокод чтобы открыть все уроки, чтобы получить код нажмите на кнопку ПОЛУЧИТЬ КОД", isPresented: $isShowAlert) {
                        
                        TextField("Ваш промокод", text: $inputText)
                    } message: {
                        Text("")
                    }
                }
                
                .navigationBarHidden(true)
                .tabItem {
                    Label("Видео", systemImage: "video")
                }
                    TextsSwiftUIView()
                            .tabItem {
                            Label("Тексты", systemImage: "book")
                                    }
                                ExercisesSwiftUIView()
                                    .tabItem {
                                        Label("Слова", systemImage: "pencil")
                                }
                            }
                        }
                    }



    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }


