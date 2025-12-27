//
//  Car.swift
//  SQLiteCarDatabase
//
//  Created by Hubert Krupa on 27/12/2025.
//

import Foundation

class Car {
    var id: Int64?
    var brand: String
    var model: String
    var color: String
    
    init(id: Int64) {
        self.id = id
        self.brand = ""
        self.model = ""
        self.color = ""
    }
    
    init(id: Int64, brand: String, model: String, color: String) {
        self.id = id
        self.brand = brand
        self.model = model
        self.color = color
    }
}
