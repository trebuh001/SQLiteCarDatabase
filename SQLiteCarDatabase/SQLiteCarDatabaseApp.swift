//
//  SQLiteCarDatabaseApp.swift
//  SQLiteCarDatabase
//
//  Created by Hubert Krupa on 23/12/2025.
//

import SwiftUI

@main
struct SQLiteCarDatabaseApp: App {
    
    @StateObject private var router = NavigationRouter()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.path) {
                ContentView()
                    .environmentObject(router)
                    .navigationDestination(for: Route.self) { route in
                        route
                    }
            }
        }
    }
}
