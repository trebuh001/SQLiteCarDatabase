//
//  NavigationRouter.swift
//  SQLiteCarDatabase
//
//  Created by Hubert Krupa on 04/08/2026.
//

import Foundation
import SwiftUI
import Combine

enum Route: Hashable, View {
    case contentView
    case mainDatabaseView
    
    var body: some View {
        switch self {
        case .contentView:
            ContentView()
        case .mainDatabaseView:
            MainDatabaseView()
        }
    }
}

class NavigationRouter: ObservableObject {
    @Published var path = NavigationPath()

    func navigate(to route: Route) {
        path.append(route)
    }

    func pop() {
        path.removeLast()
    }

    func reset() {
        path = NavigationPath()
    }
}
