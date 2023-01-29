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
            Words(title: "Продукты", theme: Themes().products, id: 10)
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
                "Elevato / Lift": "Лифт",
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
    
    
}

struct Texts: Identifiable {
    
    let title: String
    let mainText: mainTextEnum
    let id: Int
    
    init(title: String, mainText: mainTextEnum, id: Int) {
        self.title = title
        self.mainText = mainText
        self.id = id
    }
    
    static func getTexts() -> [Texts] {
        [Texts(title: "Armando",mainText: .armando, id: 0),
         Texts(title: "MyHobbie",mainText: .hobbie, id: 1)]
    }
    enum mainTextEnum: String {
        case armando = """
        Hello, I want to tell you about my best friend. His name is Armando, he lives in Milan. He goes to school, and he speaks Spanish. He likes to play football. Armando is a very nice boy, he always helps me with homework. After school, we play football together. Armando likes to play football, and watch films. He has a family. He has parents and sister Monica. Monica is a very good girl. She works in a hospital. She is a nurse. Armando wants to be a doctor.)
        """
        case hobbie = """
        Hi, my name is John and I like to read books. It is my hobby. I like to read detectives, my favourite(любимый) book is Sherlock Holmes by A.С.Doyle. I think that(что) Sherlock Holmes is a very smart(умный) man. Sherlock has a friend who helps him. His name is Dr. John Watson.
        They are a good team. They live in London in Baker-Street. Sherlock has an older brother, his name is Mycroft Holmes and he is also very smart. I want to learn English, because I want to read books in English.
        Every week I go to library(библиотека) and take(взять) one new book.
        Sometimes I go to bookshop and buy new books.
        """
    }
    
}

