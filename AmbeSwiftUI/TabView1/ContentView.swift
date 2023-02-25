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
//    var realm = try! Realm()
    @ObservedObject var realmData = RealmData()
  
    @FocusState var isInputActive: Bool
  
    @State private var isShowAlert = false
    @State private var isShowModal = false
    @State private var isShowingLaunchScreen = true
    @State private var inputText = ""
    @State private var check = ""
    @State private var isActive = [Bool](repeating: false, count: Topic.getTopics().count)
    @State private var cellEnabled = false
    
    let promoCode = "Zubair"
 
    var body: some View {
            TabView {
                VStack {
                    let objects = realmData.realm.objects(TextObject.self).first
                    let inputCode = objects?.promoCode
                    
                    NavigationView {
                        List(moduls) { modul in
                            VStack {
                                NavigationLink(destination: TopicsSwiftUI(topic: modul), isActive: self.$isActive[modul.id]) {
                                    VStack {
                                        ZStack {
                                            tableViewCell()
                                            Text("Урок" +  " \(modul.id + 1)." + " " + modul.title)
                                                .foregroundColor(.white).bold().font(Font.title2).shadow(color:.white,radius: 10)
                                                .navigationBarTitle("Начальный курс")
                                        }
                                    }
                                }
                            }
                            .onAppear {
                                    if inputCode == promoCode {
                                        cellEnabled = true
                                    }
                                }
                            .buttonStyle(PlainButtonStyle())
                            .disabled(modul.id >= 1 && inputText != promoCode && !cellEnabled)
                            .onTapGesture {
                                if modul.id < 1 {
                                    self.isActive[modul.id] = true }
                                else {
                                        if let code = inputCode,
                                           code == self.promoCode {
                                            self.isActive[modul.id] = true
                                            self.cellEnabled = true
                                        }
                                        else {
                                            self.isShowAlert = true
                                        }
                                }
                            }
                        }
                    .listStyle(.plain)
                    
//: NAVIGATION BAR ITEMS
                    .navigationBarItems(trailing: Button(action: {
                        self.isShowAlert = true
                        print(inputCode)
                    }) { Text("Ввести код") }
                    ).bold()
                }
                .sheet(isPresented: $isShowAlert) {
                        VStack {
                                Text("Получить полный доступ")
                                .font(.title)
                                .bold()
                            Text("Введите промокод чтобы получить пожизненный доступ ко всем урокам")
                                .padding()
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                            TextField("Ваш промокод", text: self.$inputText)
                                .padding()
                            Button(action: {
                                guard let url = URL(string: "https://www.instagram.com/deshar_school/") else { return }
                                UIApplication.shared.open(url)
                            }) {
                                Text("Получить код").bold()
                            }
                            Spacer()
                            Button("Подтвердить") {
                                realmData.save(text: self.inputText)
                                if inputText == promoCode {
                                    cellEnabled = true
                                } else {
                                    cellEnabled = false
                                }
                                isShowAlert = false
                            }
                            .padding()
                        }.frame(width: 400, height: 100)
                    }
                }

                
//: TAB ITEMS
                .navigationBarHidden(true)
                .tabItem { Label("Уроки", systemImage: "brain.head.profile")}
                                TextsSwiftUIView()
                .tabItem { Label("Тексты", systemImage: "books.vertical") }
                                ExercisesSwiftUIView()
                .tabItem { Label("Слова", systemImage: "highlighter")}
                            }
                        }
                    }



    
struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

struct tableViewCell: View {
    var body: some View {
        Rectangle()
            .frame(height: 80)
            .cornerRadius(20)
            .foregroundColor(.blue)
            .shadow(color: .black, radius: 5)
    }
}


