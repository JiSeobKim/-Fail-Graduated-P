//
//  VisitorCount.swift
//  Last
//
//  Created by 김지섭 on 2017. 6. 20..
//  Copyright © 2017년 JiseobKim. All rights reserved.
//

import Foundation
import RealmSwift

class VisitorCount: Object {
    dynamic var date: Date = Date()
    dynamic var count: Int = Int(0)
    
    func save() {
        do {
            let realm = try Realm()
            try realm.write {
                realm.add(self)
            }
        } catch let error as NSError {
            fatalError(error.localizedDescription)
        }
    }
    
    func delete() {
        do {
            let realm = try Realm()
            try! realm.write {
                realm.deleteAll()
            }
        } catch let error as NSError {
            fatalError(error.localizedDescription)
        }

    }

    
}
