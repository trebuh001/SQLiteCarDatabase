//
//  ContentView.swift
//  SQLiteCarDatabase
//
//  Created by Hubert Krupa on 23/12/2025.
//

import SwiftUI
import RswiftResources

struct ContentView: View {
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    titleLabel
                    
                    goToDatabaseButton
                    
                    Spacer()
                }
                .padding(.horizontal, 16)
            }
        }
        .onAppear {
            SQLiteDB.instance.createTable()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.green)
    }
    
    private var titleLabel: some View {
        Text(R.string.localizable.welcome_screen_title_label_text)
            .font(.custom(R.font.robotoBold, size: 24))
            .padding(.top, 16)
    }
    
    private var goToDatabaseButton: some View {
        Button {
            //TODO: logic if needed
            
        } label: {
            Text(R.string.localizable.welcome_screen_go_to_database_button_text)
                .font(.custom(R.font.robotoBold, size: 16))
                .foregroundStyle(.black)
                .frame(maxWidth: .infinity)
                .frame(height: 48)
        }
        .background(.gray)
        .cornerRadius(12)
    }
}

#Preview {
    ContentView()
}
