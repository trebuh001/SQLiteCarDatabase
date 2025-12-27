//
//  SQLiteDB.swift
//  SQLiteCarDatabase
//
//  Created by Hubert Krupa on 27/12/2025.
//

import SQLite

class SQLiteDB {
    static let instance = SQLiteDB()
    private let db: Connection?
    
    private let cars = Table("cars")
    private let id = Expression<Int64>("id")
    private let brand = Expression<String>("brand")
    private let model = Expression<String>("model")
    private let color = Expression<String>("color")
    
    private init() {
        let path = NSSearchPathForDirectoriesInDomains(
            .documentDirectory, .userDomainMask, true
            ).first!

        do {
            db = try Connection("\(path)/db.sqlite3")
            print("Database: \(db.debugDescription)")
        } catch {
            db = nil
            print ("Unable to open database")
        }

        createTable()
    }
    
    func createTable() {
        do {
            try db!.run(cars.create(ifNotExists: true) { table in
            table.column(id, primaryKey: true)
            table.column(brand)
                table.column(model)
            table.column(color)
            })
        } catch {
            print("Unable to create table")
        }
    }
}
