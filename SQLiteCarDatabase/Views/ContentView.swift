//
//  ContentView.swift
//  SQLiteCarDatabase
//
//  Created by Hubert Krupa on 23/12/2025.
//

import SwiftUI
import RswiftResources

struct ContentView: View {
    
    @EnvironmentObject var router: NavigationRouter
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    titleLabel

                    iconImage
                    
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
    
    private var iconImage: some View {
        Image(systemName: "cube.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
            .padding(.vertical, 60)
    }
    
    private var goToDatabaseButton: some View {
        Button {
            router.navigate(to: .mainDatabaseView)
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
