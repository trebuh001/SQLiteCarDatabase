//
//  ContentView.swift
//  SQLiteCarDatabase
//
//  Created by Hubert Krupa on 23/12/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Text("SQLite Car Database")
                    .font(.custom("Roboto-Bold", size: 24))
                    .padding(.top, 16)
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.green)
    }
}

#Preview {
    ContentView()
}
