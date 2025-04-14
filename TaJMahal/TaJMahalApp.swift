//
//  TaJMahalApp.swift
//  TaJMahal
//
//  Created by Perez William on 19/03/2025.
//

import SwiftUI

@main
struct TaJMahalApp: App {
        var body: some Scene {
                WindowGroup {
                        //MARK: la NavigationStack doit être définie au niveau de l'app. Cohèrence et optimisation : elle devienne global pour toute l'application
                        NavigationStack {
                                WelcomeView(viewModel: ViewModel()) //injection du viewModel
                        }.accentColor(.black)
                }
        }
}
