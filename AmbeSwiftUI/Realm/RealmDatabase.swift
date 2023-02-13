//
//  RealmDatabase.swift
//  AmbeSwiftUI
//
//  Created by Байсаев Зубайр on 11.02.2023.
//

import Foundation
import RealmSwift

class TextObject: Object {
    @Persisted var promoCode: String = ""
}

class RealmData: ObservableObject {
    let realm = try! Realm()
    
    func save(text: String) {
        try! realm.write {
            let textObject = TextObject()
            realm.delete(realm.objects(TextObject.self))
            textObject.promoCode = text
            realm.add(textObject)
        }
    }
    func delete() {
        try! realm.write {
            realm.deleteAll()
        }
    }
}
