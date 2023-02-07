//
//  ContentView.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 01.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    let moduls = Topic.getTopics()
    
    @State private var isShowAlert = false
    @State private var inputText = ""
    let promoCode = "Zubair"
    
    var body: some View {
            TabView {
                VStack {
                    NavigationView {
                        List(moduls) { modul in
                            VStack {
                                NavigationLink(destination: TopicsSwiftUI(topic: modul) ) {
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
                                }
                        }
                        .listStyle(.plain)
                        .navigationBarItems(trailing: Button(action: {
                            print($inputText)
                            self.isShowAlert = true}) {
                            Text("Ввести код")
                            }
                        )
                    }
                    .alert( "Введите ваш промокод", isPresented: $isShowAlert) {
                        TextField("Ваш промокод", text: $inputText)
                    } message: {
                        Text("")
                    }

                }
                
                .navigationBarHidden(true)
                .tabItem {
                    Label("Lessons", systemImage: "video")
                }
                    TextsSwiftUIView()
                            .tabItem {
                            Label("Texts", systemImage: "book")
                                    }
                                ExercisesSwiftUIView()
                                    .tabItem {
                                        Label("Exercise", systemImage: "pencil")
                                }
                            }
                        }
                    }


    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }


