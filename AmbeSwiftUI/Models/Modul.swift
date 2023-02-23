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
            Topic(id: 1, title: "Conjuctions and Prepositions", topicDescription: .conjuctionsDescription, importantStuff: .presAndConsImportant, youtubeurl: .consAndPrepsUrl),
            Topic(id: 2, title: "To Be", topicDescription: .toBe, importantStuff: .tobeImportant, youtubeurl: .toBeUrl),
            Topic(id: 3, title: "Future Simple", topicDescription: .futureSimple, importantStuff: .futureSimpleImportant, youtubeurl: .futureSimpleUrl),
            Topic(id: 4, title: "Past Simple", topicDescription: .pastSimple, importantStuff: .pastSimpleImportant, youtubeurl: .pastSimpleUrl),
            Topic(id: 5, title: "Adjectives", topicDescription: .adjectivs, importantStuff: .adjectives, youtubeurl: .adjectivesUrl),
            Topic(id: 6, title: "Possessive Case", topicDescription: .possessiveCase, importantStuff: .possessiveCase, youtubeurl: .posessiveCaseUrl),
            Topic(id: 7, title: "Objective Pronouns", topicDescription: .objectivePronouns, importantStuff:.objectivePronouns, youtubeurl: .objectivePronounsUrl),
            Topic(id: 8, title: "Modal Verbs", topicDescription: .ModalVerbs, importantStuff: .modalVerbs, youtubeurl: .modalVerbsUrl),
            Topic(id: 9, title: "Articles", topicDescription: .articles, importantStuff: .articles, youtubeurl: .articlesUrl)
        ]
    }
    }

enum YoutubeURL: String {
    case presentSimpleUrl = "wIJeRkZWACk&list=PLGIOzMmxwHV1eIJ9kRdBROx0xjRGBboMU&index=4"
    case futureSimpleUrl = "DvSDY8ZIr1U&list=PLGIOzMmxwHV1eIJ9kRdBROx0xjRGBboMU&index=7&t=59s"
    case pastSimpleUrl = "gMHxEO3LrQg"
    case consAndPrepsUrl = "SY3K7jzfJoE&list=PLGIOzMmxwHV1eIJ9kRdBROx0xjRGBboMU&index=5"
    case toBeUrl = "gZE0DdpwRew"
    case modalVerbsUrl = "CzPEAe8Q_Yg&list=PLGIOzMmxwHV1eIJ9kRdBROx0xjRGBboMU&index=1"
    case adjectivesUrl = "Eu3t2zRh5mI&list=PLGIOzMmxwHV1eIJ9kRdBROx0xjRGBboMU&index=3"
    case posessiveCaseUrl = "gZE0DdpwRew3"
    case objectivePronounsUrl = "jjWABQqpTcg&list=PLGIOzMmxwHV1eIJ9kRdBROx0xjRGBboMU&index=3"
    case articlesUrl = "gZE0DdpwRew5"
}

enum ImportantStuff: String {
    case presentSimpleImportant = """
    3 вида предложений:
    1) Утверждение - I play games
    2) Вопрос - Do you speak Spanish?
    3) Отрицание - We don't like chocolate
    """
    case futureSimpleImportant = """
    3 вида предложений:
    1) Утверждение - We will go to America
    2) Вопрос - Will we go to America? (во время вопроса ставим WILL в начало предложения)
    3) Отрицание - We will not go to America (во время отрицаем добавляем NOT к WILL)
    
    WILL BE - буду
    
    Я буду - I will be
    Мы будем - We will be
    Он будет - He will be
    
    """
    case pastSimpleImportant = """
    Чтобы сказать что мы были, мы используем слова WAS и WERE
    WAS - был
    WERE - были
    
    I / He/ She / It - was
    We / They / You - were
    
    3 вида предложений:
    1) Утверждение - John was at school
    2) Вопрос - Was John at school? (когда задаем вопрос TO BE ставим в начало предложения)
    3) Отрицание - John was not at school (когда отрицаем добавляем NOT к TO BE)
    
    WAS и WERE это глагол TO BE в прошедшем времени
    
    Неправильные глаголы в прошедшем времени используются только в утверждении
    
    Например:
    
    We went to hospital - Мы пошли в больницу
    Но если задаем вопрос или отрицание используем глагол в настоящем времени
    Did you go to hospital yesterday? - Ты пошел в больницу вчера?
    They didn't go to hospital yesterday - Они не пошли в больницу вчера
    
    Go - Went = Идти - Пошел
    Know - Knew = Знать - Знал
    See - Saw = Видеть - Видел
    Have - Had = Иметь - Имел
    
    """
    case tobeImportant = """
    
    To be имеет 3 формы - AM / IS / ARE
    
    3 вида предложений:
    1) Утверждение - He is a doctor
    2) Вопрос - Is he a doctor (когда задаем вопрос TO BE ставим в начало предложения)
    3) Отрицание - He is not a doctor (когда отрицаем добавляем NOT к TO BE)
    """
    case presAndConsImportant = """
    Некоторые предлоги мы также используем со временем
    
    On - с днями, например I don't work on Monday
    In - с годами, временами года, месяцами, а также со словами morning / evening/ afternoon
    At - с часами и со словом night
    
    """
    case adjectives = """
    John is smart - Джон умный
    John is as smart as Jack - Джон такой же умный как и Джек (as - такой как)
    John is smarter than Jack - Джон умнее, чем Джек
    John is the smartest boy in the school - Джон самый умный мальчик в школе
    
    Big - большой
    As big as - такой же большой как
    Bigger than - больше чем
    The biggest - самый большой
    
    """
    case possessiveCase = """
    Zubair's lesson = Зубайра урок (чей?)
    Lesson of Zubair = Урок Зубайра
    """
    case objectivePronouns = """
    Help me - помоги мне
    Stay with us - останься с нами
    Meet her - Встреть ее
    """
    case modalVerbs = """
    3 вида предложений:
    1) Утверждение - We must go
    2) Вопрос - Can you help me? (когда задаем вопрос модальный глагол ставим в начало предложения)
    3) Отрицание - You should not do it (когда отрицаем добавляем NOT к модальному глаголу)
    """
    case articles = """
    Артикли используем только с существительными
    
    A / An - только с чем-то неопределенным, что не имеет важности
    и только в единственном числе
    
    The - с чем-то особенным
    
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
    case toBe = """
    В английском языке есть два вида выражений:
    
    1) С действиями, когда кто-то что-то делает
    2) Без действий, когда никто ничего не делает
    
    Когда у нас нет никаких действий мы ОБЯЗАТЕЛЬНО используем TO BE
    AM / ARE / IS
    
    I - am
    
    You / We / They - are
    
    He / She / It / любое имя - is
    
    Например:
    Я учитель - I am a teacher
    Джон врач - John is a doctor
    Они в Москве - They are in Moscow
    
    """
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
    
    Если в предложении нет действия, мы просто используем WILL BE - Буду
    Например:
    Я буду в Италии завтра - I will be in Italy tomorrow
    """
    case pastSimple = """
    Прошедшее время (Past Simple) указывает на то что мы сделали в прошлом.
    Образуется путем добавления дополнительного окончание ED к глаголу
        
    Например:
        
    Я жил в Германии - I lived in Germany
    Мы учили английский - We learned English
        
    Чтобы задать вопрос слово Did ставим в начало предложения.
        
    Did you eat this cake? - Ты съел этот торт?
    Did they come yesterday? = Они пришли вчера?
        
    Чтобы задать отрицание мы используем слово DIDN'T (DID NOT)
        
    I didn't see you in the park - Я не видел тебя в парке
    He didn't know Jason - Он не знал Джейсона
    
    """
    case ModalVerbs = """
    Модальные глаголы - это глаголы которые не изменяются по временам
    can, must, may, should, could
    
    Can - могу, умею
    Must - должен
    May - можно
    Should - cледует
    Could - мог, мог бы, умел
    """
    case adjectivs = """
    Прилагательное - это часть речи отвечающая на вопросы
    КАКОЙ? КАКАЯ? КАКИЕ? КАКОЕ?
    
    В разделе со словами вы можете найти основные прилагательные
    Прилагательные обязательно используем с глаголом TO BE
    
    """
    case objectivePronouns = """
    Объектные местоимения - это местоимения, которые мы используем в 3-х случаях
    
    1) Во время просьбы или приказа
    2) С предлогами (with, of, for, from и тд.)
    3) Когда отвечаем на вопрос КОМУ?
    
    me - мне
    you - тебе
    him - ему
    her - ей
    it - этому
    us - нам / нас
    them - им / их
    """
    case possessiveCase = """
    Когда мы отвечаем на вопросы ЧЕЙ? ЧЬЯ? ЧЬЕ? мы добавляем к слову 's
    
    Например:
    Джона машина - John's car
    
    Также мы можем использовать предлог of, чтобы слово отвечало на вопрос ЧЕЙ?
    
    Например:
    Машина Джона - Car of John
    
    Эти слова нужно просто запомнить, они называются притяжательные местоимения
    
    my - мое
    your - твое
    his - его
    her - ее
    our - наше
    their - их
    its - этого
    """
    case articles = """
    Про артикли можно много говорить, но краткая информация на видео.
    От себя могу сказать что если вы их не используете в речи, ничего страшного.
    В основном они заметны на письме
    """
    
}

