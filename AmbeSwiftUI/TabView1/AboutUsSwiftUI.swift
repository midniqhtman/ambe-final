//
//  AboutUsSwiftUI.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 02.03.2023.
//

import SwiftUI

struct AboutUsSwiftUI: View {
    var body: some View {
        ScrollView {
            Text("О нас").font(.largeTitle).bold().padding()
            Image("profile").resizable().frame(width: 400, height: 370).cornerRadius(20)
            Text("""
        Привет,меня зовут Зубайр, я лингвист, переводчик и полиглот. Основатель онлайн-школы Deshar. По-английски говорю с 8 лет. Данное приложение поможет тебе выучить основы английского языка.
        
        В нем 3 раздела:
        
        1) Раздел с видео уроками. В нем ты можешь выучить всю базовую грамматику. Первый урок я сделал для тебя бесплатным, за доступ к остальным нужно немножко заплатить.
        2) Раздел с текстами. В нем я собрал тексты для начинающих, с переводом на русский язык, а также с правильным чтением текста. Если нажать на кнопку, ты услышишь аудиодорожку
        3) Раздел со словами. В нем собраны слова по определенным темам. Также есть возможность прослушать слова. В этом разделе ты еще найдешь кнопку ТЕСТ. Нажав на нее начнется Квиз-игра, на проверку слов.
        
        Также ты можешь записаться ко мне на онлайн-уроки, перейдя ко мне в инстаграм. Кнопка ниже перекинет тебя в мой инстаграм.
                 
        """).italic().font(.title3)
                .padding(25)
            Button(action: {
                guard let url = URL(string: "https://ig.me/m/deshar_school") else { return }
                UIApplication.shared.open(url)
            }) {
                Text("Записаться на урок").bold().font(.title2)
            }.buttonStyle(ActionButton())
        }
    }
}

struct AboutUsSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsSwiftUI()
    }
}
