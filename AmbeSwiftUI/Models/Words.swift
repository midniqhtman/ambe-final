//
//  WordsModul.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 12.01.2023.
//

import Foundation

struct Words: Identifiable {
    let title: String
    let theme: [String : String]
    let id: Int
   
    
    static func getWords() -> [Words] {
        [
            Words(title: "Семья", theme: Themes().family, id: 0),
            Words(title: "Дни недели", theme: Themes().daysOfTheWeek, id: 1),
            Words(title: "Месяцы", theme: Themes().months, id: 2),
            Words(title: "Первые глаголы", theme: Themes().firstVerbs, id: 3),
            Words(title: "Прилагательные", theme: Themes().adjectives, id: 4),
            Words(title: "Одежда", theme: Themes().clothes, id: 5),
            Words(title: "Аэропорт", theme: Themes().airport, id: 6),
            Words(title: "Глаголы 2", theme: Themes().secondVerbs, id: 7),
            Words(title: "Дом", theme: Themes().house, id: 8),
            Words(title: "Отель", theme: Themes().hotelWords, id: 9),
            Words(title: "Продукты", theme: Themes().products, id: 10),
            Words(title: "Части тела", theme: Themes().partsOfTheBody, id: 11)
        ]
    }
}

struct Themes {
    let family = [
                "Father": "Отец",
                "Mother": "Мать",
                "Son": "Сын",
                "Daughter": "Дочь",
                "Grandfather": "Дедушка",
                "Grandmother": "Бабушка",
                "Sister": "Сестра",
                "Brother": "Брат",
                "Wife": "Жена",
                "Husband": "Муж"
                 ]
    let daysOfTheWeek = [
                "Monday": "Понедельник",
                "Tuesday": "Вторник",
                "Wednesday": "Среда",
                "Thursday": "Четверг",
                "Friday": "Пятница",
                "Saturday": "Суббота",
                "Sunday": "Воскресенье"
                        ]
    let months = [
                "January": "Январь",
                "February": "Февраль",
                "March": "Март",
                "April": "Апрель",
                "May": "Май",
                "June": "Июнь",
                "July": "Июль",
                "August": "Август",
                "September": "Сентябрь",
                "October": "Октябрь",
                "November": "Ноябрь",
                "December": "Декабрь"
                        ]
    
    let firstVerbs = [
                "Like": "Нравиться",
                "Speak": "Говорить",
                "Want": "Хотеть",
                "Need": "Нуждаться",
                "Have": "Иметь",
                "Work": "Работать",
                "Live": "Жить",
                "Go": "Идти",
                "Eat": "Кушать",
                "Drink": "Пить",
                "Play": "Играть",
                "Read": "Читать",
                "Help": "Помогать",
                "Study": "Учиться",
                "Watch": "Смотреть",
                "Listen": "Слушать",
                "Remember": "Помнить",
                "Get": "Получать",
                "Send": "Отправлять",
                "Love": "Любить"
                 ]
    let adjectives = [
                "Smart": "Умный",
                "Strong": "Сильный",
                "Tall": "Высокий",
                "Dark": "Темный",
                "Bright": "Яркий",
                "Hungry": "Голодный",
                "Angry": "Злой",
                "Happy": "Счастливый",
                "Tired": "Уставший",
                "Fat": "Толстый"
                 ]
    let clothes = [
                "Coat": "Пальто",
                "Jacket": "Куртка",
                "Trousers": "Брюки",
                "Hat": "Шляпа",
                "Cap": "Шапка, Кепка",
                "Shoes": "Туфли",
                "Shirt": "Рубашка",
                "T-shirt": "Футболка",
                "Socks": "Носки",
                "Belt": "Ремень",
                "Tie": "Галстук",
                "Watch": "Часы",
                "Glasses": "Очки",
                "Suit": "Костюм",
                "Trainers": "Кроссовки",
                "Put On": "Надеть",
                "Put Off": "Снять",
                "Dress": "Платье, Одеваться",
                "Skirt": "Юбка"
                 ]
    let hotelWords = [
                "Hotel": "Отель",
                "Check-in": "Зарегистрироваться",
                "Check-out": "Выехать",
                "Room": "Комната",
                "Key": "Ключ",
                "Elevator / Lift": "Лифт",
                "Breakfast": "Завтрак",
                "Free": "Бесплатный",
                "Reservation": "Бронь",
                "Book": "Забронировать"
                 ]
    let products = [
                "Meat": "Мясо",
                "Milk": "Молоко",
                "Fish": "Рыба",
                "Beef": "Говядина",
                "Chicken": "Курица",
                "Pork": "Свинина",
                "Water": "Вода",
                "Bread": "Хлеб",
                "Vegetables": "Овощи",
                "Fruit": "Фрукты",
                "Orange": "Апельсин",
                "Potatoe": "Картофель",
                "Apple": "Яблоко",
                "Rice": "Рис",
                "Porridge": "Каша",
                "Egg": "Яйцо",
                "Butter": "Масло",
                "Meal": "Блюдо",
                "Breakfast": "Завтрак",
                "Dinner": "Ужин",
                "Lunch": "Обед"
                 ]
    let airport = [
                "Arrivals": "Прилет",
                "Departures": "Вылет",
                "Entrance": "Вход",
                "Ticket": "Билет",
                "Luggage": "Багаж",
                "Plane": "Самолет",
                "Flight": "Рейс",
                "Timetable": "Расписание",
                "Cancel": "Отмена",
                "Delay": "Задержка",
                "Сustoms": "Таможня"
                 ]
    let house = [
                "Kitchen": "Кухня",
                "Bathroom": "Ванна",
                "Bedroom": "Спальня",
                "Living room": "Гостиная",
                "Balcony": "Балкон",
                "Chair": "Стул",
                "Table": "Стол",
                "Armchair": "Кресло",
                "Sofa": "Диван",
                "Fridge": "Холодильник",
                "Shower": "Душ",
                "Knife": "Нож",
                "Spoon": "Ложка",
                "Fork": "Вилка",
                "Cup": "Чашка",
                "Plate": "Тарелка",
                "Bowl": "Миска",
                "Sink": "Раковина",
                "Mirror": "Зеркало",
                "Wardrobe": "Гардероб",
                "Bed": "Кровать",
                "Door": "Дверь",
                "Furniture": "Мебель"
                 ]
    let secondVerbs = [
                "Understand": "Понимать",
                "Sleep": "Спать",
                "Think": "Думать",
                "Fight": "Драться",
                "Show": "Показывать",
                "Take": "Взять",
                "Give": "Дать",
                "Dance": "Танцевать",
                "Sing": "Петь",
                "Train": "Тренироваться",
                "Swim": "Плавать",
                "Call": "Звонить",
                "Ask": "Спрашивать",
                "Answer": "Отвечать",
                "Come": "Приходить",
                "Repeat": "Повторять",
                "Forget": "Забыть",
                "Cook": "Приготовить",
                "Run": "Бегать",
                "Clean": "Чистить",
                "Make": "Делать, Создавать",
                "Meet": "Встретить",
                "Spend": "Тратить",
                "Write": "Писать"
                 ]
    let partsOfTheBody = [
                "Head": "Голова",
                "Leg": "Нога",
                "Hand": "Рука",
                "Heart": "Сердце",
                "Brain": "Мозг",
                "Back": "Спина",
                "Knee": "Колено",
                "Elbow": "Локоть",
                "Eyes": "Глаза",
                "Ears": "Уши",
                "Nose": "Нос",
                "Mouth": "Рот"
                 ]
    
    
}

struct Texts: Identifiable {
    
    let title: String
    let mainText: mainTextEnum
    let id: Int
    let audioRecord: Audios
    let translation: Translation
    
    init(title: String, mainText: mainTextEnum, id: Int, audioRecord: Audios, translation: Translation ) {
        self.title = title
        self.mainText = mainText
        self.id = id
        self.audioRecord = audioRecord
        self.translation = translation
    }
    
    static func getTexts() -> [Texts] {
        [Texts(title: "Armando",mainText: .armando, id: 0, audioRecord: .armandoAudio, translation: .armandoRus),
         Texts(title: "My hobby",mainText: .hobbie, id: 1, audioRecord: .myHobby, translation: .myHobbyRus),
         Texts(title: "Trip to Germany", mainText: .tripToGermany, id: 2, audioRecord: .tripToGermany, translation: .tripToGermanyRus),
         Texts(title: "John and Jim", mainText: .johnAndJim, id: 3, audioRecord: .johnAndJim, translation: .johnAndJimRus),
         Texts(title: "At the Hospital", mainText: .hospital, id: 4, audioRecord: .atTheHospital, translation: .hospitalRus),
         Texts(title: "Bird Island", mainText: .birdIsland, id: 5, audioRecord: .birdIsland, translation: .birdIslandRus),
         Texts(title: "The perfect day", mainText: .perfectDay, id: 6, audioRecord: .thePerfectDay, translation: .perfectDayRus),
         Texts(title: "At the restaraunt", mainText: .atTheRestaraunt, id: 7, audioRecord: .atTheRestaraunt, translation: .atTheRestarauntRus),
         Texts(title: "Migel", mainText: .migel, id: 8, audioRecord: .migel, translation: .migelRus)
        
        ]
    }
    enum mainTextEnum: String {
        case armando = """
        Hello, I want to tell you about my best friend. His name is Armando, he lives in Milan. He goes to school, and he speaks Spanish.
        He likes to play football. Armando is a very nice boy, he always helps me with homework.
        After school, we play football together. Armando likes to play football, and watch films. He has a family.
        He has parents and sister Monica. Monica is a very good girl. She works in a hospital. She is a nurse. Armando wants to be a doctor.
        """
        case hobbie = """
        Hi, my name is John and I like to read books. It is my hobby. I like to read detectives, my favourite(любимый) book is Sherlock Holmes by A.С.Doyle.
        I think that(что) Sherlock Holmes is a very smart(умный) man. Sherlock has a friend who helps him. His name is Dr. John Watson.
        They are a good team. They live in London in Baker-Street. Sherlock has an older brother, his name is Mycroft Holmes and he is also very smart.
        I want to learn English, because I want to read books in English.
        Every week I go to library(библиотека) and take(взять) one new book.
        Sometimes I go to bookshop and buy new books.
        """
        case hospital = """
        I was at the hospital with my grandfather yesterday. My grandfather’s name is Antonio, he is 65. And he has bad health because he is old.
        I went to hospital to help him. Elderly people often need help. At the hospital, we waited(ждали) for a doctor for 15 minutes.
        Doctor was a nice(приятной) woman. She looked(посмотрела) at my grandfather and gave(дала) him some pills(таблетки).
        She said(сказала) that everything(все) is fine.
        My grandfather was a painter(художник) in the past(прошлое). He painted(рисовал) very beautiful pictures of nature(природа). And he still paints them(их).
        My grandmother’s name is Lianna, and she was a singer(певица). She never goes to the hospitals.
        She has good health. And she sings(поет) sometimes. She cooks the best(лучшая) pizza.

        """
        case johnAndJim = """
        Wild West, America. Two cowboy-friends saw a piece of paper with a text on it. 100 dollars for one indian’s scalp.
        They went to the Indian territory, killed Indian, took his scalp. But it was evening already, so they decided to sleep in a tent on indian’s territory.
        Jim wakes up in the morning, goes out the tent and sees dozens of Indians around them. Jim is shocked, he goes back to the tent, wakes up John and says:
        -John, John wake up. We are millionaires

        """
        case perfectDay = """

        When Chris Hadfield goes into space, he doesn't have a lot of free time. He works twelve hours a day and also
        does two hours' exercise. Life in space is very different to life on earth. Astronauts don't have showers like
        people on earth do - they wash with a cloth. They don't sleep in a bed - they sleep in special sleeping bags on
        the walls. It is difficult to know the time because in space the sun doesn't rise once a day - it rises once
        every 45 minutes. It's hard work, but most astronauts love being in space. Chris says it is amazing and he
        doesn't want to sleep. For him, every day in space is a perfect day!

        """
        
        case birdIsland = """
        Bird Island is an important scientific research centre.
        Every year lots of scientists visit the island, but Melanie Szabo, a professor of zoology, work. there all year.
        Sven Olafsson, who is from Bergen in Norway, also works on the island. He studies seals and Melanie watches penguins.
        The penguins come to the beaches on the north of the island and Melanie often works there alone.
        Sven never works alone - he always works with the other scientists because the male seals are big and sometimes dangerous!
        Sven loves his job, but he works very hard and he hardly ever has free time.
        For Melanie, her favourite time is Saturday night.
        One of the scientists usually makes a big dinner for the group and they watch a movie together, relax or play games.

        """
        
        case tripToGermany = """
        Last year I went to Germany, Berlin. To visit my uncle. It was my first time in Europe, and I really liked it. I took a flight from airport Vnukovo in Moscow to airport Tegel in Berlin. The flight lasted for 2 hours. I talked to American girl on the board, she was nice, she went there for job and even on the board she worked with her computer. By the arrival, friend of my uncle met me at the airport. And then we went to the restaurant. Food at the restaurant was delicious. Then we went to see interesting places in Berlin. In the evening we went to the cinema, but I understood nothing, because I didn’t speak German. I only knew how to say: “Thank you” and “Please”. Germany is a very clean country. I was there for 10 days, then I came back to Moscow. It was nice experience. I hope I will go there again.
        """
        case atTheRestaraunt = """
        I went to the Italian restaurant with my friend Daniel two days ago. We ordered one big pizza and two portions of fetuccini. I really like Italian food. But my friend likes Japanese food more. We agreed that next time we will go to Japanese restaurant. We took two cups of coffee.
        At the restaurant was nice music. It was nice evening. We stayed there for 1,5 (one and half) hour. Daniel paid for the meal, he paid 70 dollars. I wanted to pay, but he didn’t let me.
        And then we went home. I go to restaurant once a week.

        """
        case migel = """
        Hello, my name is Migel, I am from Italy. I live in Milan. I am 15 years old. I have brother, mother and father. My brother’s name is Luca, my mother’s name is Joanna and my father’s name is Vito. I go to school. At school, I learn English. I like to learn English. I want to know it very well. My mother is a housewife. My father is a businessman. My brother is 25 years old and he works with my father. Luca is a very good boy. I love my family.
        I want to be a doctor, because I want to help people. I also speak Italian.

        """
    }
    
    enum Audios: String {
        case armandoAudio = "Armando"
        case atTheHospital = "At the hospital"
        case myHobby = "My hobby"
        case thePerfectDay = "The perfect day"
        case johnAndJim = "John and Jim"
        case birdIsland = "Bird Island"
        case atTheRestaraunt = "At the restaraunt"
        case tripToGermany = "Trip to Germany"
        case migel = "Migel"
    }
    
    enum wordsAudios: String {
        case family = "family"
        case hotel = "hotel"
        case daysOfTheWeek = "days of the week"
        case months = "months"
        case firstVerbs = "first verbs"
        case secondVerbs = "second verbs"
        case adjectives = "adjectives"
        case airport = "airport"
        case products = "products"
        case clothes = "clothes"
    }
    
    enum Translation: String {
        case armandoRus = """
        Здравствуйте, я хочу рассказать вам о моем лучшем друге. Его зовут Армандо, он живет в Милане. Он ходит в школу и говорит по-испански. Он любит играть в футбол. Армандо очень хороший мальчик, он всегда помогает мне с домашним заданием. После школы мы вместе играем в футбол. Армандо любит играть в футбол и смотреть фильмы. У него есть семья. У него есть родители и сестра Моника. Моника очень хорошая девочка. Она работает в больнице. Она медсестра. Армандо хочет стать врачом.
        """
        case migelRus = """
        Здравствуйте, меня зовут Мигель, я из Италии. Я живу в Милане. Мне 15 лет. У меня есть брат, мать и отец. Моего брата зовут Лука, маму - Джоанна, а отца - Вито. Я хожу в школу. В школе я учу английский. Я люблю изучать английский язык. Я хочу знать его очень хорошо. Моя мать - домохозяйка. Мой отец - бизнесмен. Моему брату 25 лет и он работает с моим отцом. Лука очень хороший мальчик. Я люблю свою семью.
            Я хочу быть врачом, потому что хочу помогать людям. Я также говорю по-итальянски
        """
        case johnAndJimRus = """
        Дикий Запад, Америка. Два ковбоя-друга видели листок бумаги с текстом на нем. 100 долларов за индейский скальп. Они отправились на индейскую территорию, убили индейца, сняли его скальп. Но уже был вечер, поэтому они решили спать в палатке на индейской территории.
        Джим просыпается утром, выходит из палатки и видит вокруг десятки индейцев. Джим в шоке, он возвращается в палатку, будит Джона и говорит:
        Джон, проснись Джон. Мы миллионеры
        """
        case myHobbyRus = """
        Привет, меня зовут Джон, и я люблю читать книги. Это мое хобби. Я люблю читать детективов, моя любимая книга Шерлок Холмс по А.С.Дойл. Я думаю, что Шерлок Холмс очень умный человек. У Шерлока есть друг, который помогает ему. Его зовут Др. Джон Уотсон.
        Они хорошая команда. Они живут в Лондоне на Бейкер-стрит. У Шерлока есть старший брат, его зовут Майкрофт Холмс, и он также очень умный. Я хочу выучить английский, потому что я хочу читать книги на английском.
        Каждую неделю я иду в библиотеку и беру одну новую книгу.
        Иногда я хожу в книжный магазин и покупаю новые книги.
        """
        case hospitalRus = """
        Вчера я был в больнице со своим дедушкой. Моего дедушку зовут Антонио, ему 65 лет. И у него плохое здоровье, потому что он старый. Я поехал в больницу, чтобы помочь ему. Пожилым людям часто нужна помощь. В больнице мы ждали врача 15 минут. Доктор была хорошая женщина. Она посмотрела на моего дедушку и дала ему таблетки. Она сказала, что все хорошо.
        Мой дед был художником в прошлом. Он рисовал очень красивые картины природы. И он до сих пор рисует их). Мою бабушку зовут Лианна, и она была певицей. Она никогда не ходит в больницы. У нее хорошее здоровье. И она иногда поет. Она готовит лучшую пиццу.
        """
        case perfectDayRus = """
        Когда Крис Хэдфилд отправляется в космос, у него нет много свободного времени. Он работает двенадцать часов в день, а также
        делает двухчасовые упражнения. Жизнь в космосе очень отличается от жизни на Земле. У астронавтов нет душа как у людей на Земле - они моются с тканью. Они не спят в кровати - они спят в специальных спальных мешках на
        стене. Трудно узнать время, потому что в космосе солнце не поднимается раз в день - оно поднимается один раз
        каждые 45 минут. Это тяжелая работа, но большинство астронавтов любят быть в космосе. Крис говорит, что это удивительно, но он
        не хочет спать. Для него каждый день в космосе идеальный день!
        """
        case birdIslandRus = """
        Берд-Айленд является важным научно-исследовательским центром. Каждый год остров посещает множество ученых, но Мелани Сабо, профессор зоологии, работы. там круглый год. Свен Олафссон, который родом из Бергена в Норвегии, также работает на острове. Он изучает тюленей и Мелани наблюдает за пингвинами. Пингвины приходят на пляжи на севере острова и Мелани часто работает там в одиночку. Свен никогда не работает в одиночку - он всегда работает с другими учеными, потому что самцы тюленей большие и иногда опасные! Свен любит свою работу, но он очень много работает и у него почти никогда нет свободного времени. Мелани любит субботний вечер.
            Один из ученых обычно делает большой ужин для группы и они смотрят фильм вместе, отдыхают или играют в игры.
        """
        case atTheRestarauntRus = """
        Я ходил в итальянский ресторан с моим другом Дэниелом два дня назад. Мы заказали одну большую пиццу и две порции фетуччини. Я очень люблю итальянскую еду. Но мой друг любит японскую еду больше. Мы договорились, что в следующий раз мы пойдем в японский ресторан. Мы выпили две чашки кофе. В ресторане была хорошая музыка. Это был приятный вечер. Мы остались там на 1,5 часа. Даниэль заплатил за еду, он заплатил 70 долларов. Я хотел заплатить, но он не позволил.
            А потом мы пошли домой. Я хожу в ресторан раз в неделю.
        """
        case tripToGermanyRus = """
        В прошлом году я поехал в Германию, Берлин. Навестить дядю. Это был мой первый раз в Европе, и мне это очень понравилось. Я сел на рейс из аэропорта Внуково в Москве в аэропорт Тегель в Берлине. Рейс длился 2 часа. Я поговорил с американской девушкой из на борту, она была милой, она ехала туда по работе и даже на борту она работала с ее компьютером. К приезду друг моего дяди встретил меня в аэропорту. А потом мы пошли в ресторан. Еда в ресторане была вкусной. Потом мы пошли посмотреть интересные места в Берлине. Вечером мы пошли в кино, но я ничего не понял, потому что не говорил по-немецки. Я только знал, как сказать: "Спасибо" и "Пожалуйста". Германия - очень чистая страна. Я был там 10 дней, потом вернулся в Москву. Это был приятный опыт. Надеюсь, я снова туда полечу.
        """
    }
    
}

