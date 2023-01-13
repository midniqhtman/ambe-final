//
//  ContentView.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 01.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    let moduls = Topic.getTopics()
    
    var body: some View {
        TabView {
            NavigationView {
                List(moduls) { modul in
                    NavigationLink(destination: TopicsSwiftUI(topic: modul) ) {
                        Text("Урок" +  " \(modul.id + 1)." + " " + modul.title)
                            .foregroundColor(.blue)
                            .navigationBarTitle("Beginner's course")
                    }
                }
                .listStyle(.plain)
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


