//
//  Moduls.swift
//  Ambe
//
//  Created by Байсаев Зубайр on 23.11.2022.
//

import Foundation

//struct Moduls {
//    
//    static func getTopics() -> [Topic] {
//        [
//            Topic(id: 0, title: "Present Simple", topicDescription: .presentSimpleDescription, importantStuff: .presentSimpleImportant, youtubeurl: .presentSimpleUrl),
//            Topic(id: 1, title: "Future Simple", topicDescription: .futureSimple, importantStuff: .futureSimpleImportant, youtubeurl: .futureSimpleUrl),
//            Topic(id: 2, title: "Conjuctions and Prepositions", topicDescription: .conjuctionsDescription, importantStuff: .presAndConsImportant, youtubeurl: .consAndPrepsUrl),
//            Topic(id: 3, title: "Past Simple", topicDescription: .pastSimple, importantStuff: .pastSimpleImportant, youtubeurl: .pastSimpleUrl),
//            Topic(id: 4, title: "To Be", topicDescription: .toBe, importantStuff: .tobeImportant, youtubeurl: .toBeUrl)
//        ]
//    }
//}

struct Topic: Identifiable {
    let id: Int
    let title: String
    let topicDescription: TopicsDescriptions
    let importantStuff: ImportantStuff
    let youtubeurl: YoutubeURL
    
    static func getTopics() -> [Topic] {
        [
            Topic(id: 0, title: "Present Simple", topicDescription: .presentSimpleDescription, importantStuff: .presentSimpleImportant, youtubeurl: .presentSimpleUrl),
            Topic(id: 1, title: "Future Simple", topicDescription: .futureSimple, importantStuff: .futureSimpleImportant, youtubeurl: .futureSimpleUrl),
            Topic(id: 2, title: "Conjuctions and Prepositions", topicDescription: .conjuctionsDescription, importantStuff: .presAndConsImportant, youtubeurl: .consAndPrepsUrl),
            Topic(id: 3, title: "Past Simple", topicDescription: .pastSimple, importantStuff: .pastSimpleImportant, youtubeurl: .pastSimpleUrl),
            Topic(id: 4, title: "To Be", topicDescription: .toBe, importantStuff: .tobeImportant, youtubeurl: .toBeUrl)
        ]
    }
    }

enum YoutubeURL: String {
    case presentSimpleUrl = "iy2oY7hJbcs"
    case futureSimpleUrl = "Wz_Dc7Q3CNw"
    case pastSimpleUrl = "gMHxEO3LrQg"
    case consAndPrepsUrl = "3qbfcHiUrcI"
    case toBeUrl = "gZE0DdpwRew"
}

enum ImportantStuff: String {
    case presentSimpleImportant = """
    3 вида предложений:
    1) Утверждение - I play games
    2) Вопрос - Do you speak Spanish?
    3) Отрицание - We don't like chocolate
    """
    case futureSimpleImportant = """
    future
    """
    case pastSimpleImportant = """
    past
    """
    case tobeImportant = """
    tobe
    """
    case presAndConsImportant = """
    presAndCons
    """
}

enum TopicsDescriptions: String {
    case presentSimpleDescription = """
    Настоящее время (Present Simple) указывает на то что мы делаем повседневно.
    
    Например:
    
    Я живу в Калифорнии - I live in California,
    Я работаю в Италии - I work in Italy.
    
    Чтобы задать вопрос мы используем дополнительное слово DO.
    
    Do you work in office? - Ты работаешь в офисе?
    Do you need help? = Тебе нужна помощь?
    
    Чтобы задать отрицание мы используем слово DON'T (DO NOT)
    
    I don't like coffee - Я не люблю кофе
    They don't learn Spanish - Они не учат испанский
    """
    case conjuctionsDescription = """
    Предлоги и союзы очень важны в строении предложений.
    Буквально от 1-2 союзов ваше предложение может превратиться
    из какого-то кустика в огромный сад.
    
    Например: I live in New York - Я живу в Нью-Йорке.
    А теперь чуть дополним его союзами и предлогами.
    I live in New York WITH my brother AND we like this city BUT we want to go to Chicago.
    
    По сути это предложение состоит из нескольких предложений.
    Но именно благодаря союзам и предлогам, оно выглядит огромным.
    А на деле простенькое. Основные союзы и предлоги представлены ниже.
    
    1. And - А, И
    2. But - Но, Кроме
    3. Or - Или
    4. With - С
    5. Without - Без
    6. About - О, Об
    7. For - Для, За
    8. From - От, Из
    9. To - Направление, например: I go TO school.
    10. At - Местоположение, например: I am AT hospital.
    """
    case toBe = "tobe"
    case futureSimple = """
    Будущее время (Future Simple) указывает на то что мы сделаем в будущем.
    Образуется путем добавления дополнительного слова WILL
        
    Например:
        
    Я буду играть - I will play,
    Мы купим новую квартиру - We will buy new flat.
        
    Чтобы задать вопрос слово WILL ставим в начало предложения.
        
    Will you eat this cake? - Ты съешь этот торт?
    Will they come tomorrow? = Они придут завтра?
        
    Чтобы задать отрицание мы используем слово WON'T (WILL NOT)
        
    I won't delete this app - Я не удалю это приложение
    He won't fail me - Он не подведет меня
    """
    case pastSimple = "Past Simple is a tense"
    
}

