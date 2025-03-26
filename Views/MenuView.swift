//
//  MenuView.swift
//  TaJMahal
//
//  Created by Amandine Cousin on 31/10/2023.

import SwiftUI

struct MenuView: View {
        let apetizers: [Dish]
        let mainCourses: [Dish]
        
        var body: some View {
                ScrollView {
                VStack {
                        VStack(spacing: 14) {
                                DishSectionView(title: "Entrées", dishes: apetizers)
                                DishSectionView(title: "Plats Principaux", dishes: mainCourses)
                        }
                        .padding(.horizontal, 3)
                        .padding(.top, -10)
                        }
                        .navigationTitle("Menu")
                        .font(Theme.FontSize.large)
                        .navigationBarTitleDisplayMode(.inline)//
                        .navigationBarHidden(false)
                }
        }
}

#Preview {
        MenuView(apetizers: [Dish.example], mainCourses: [Dish.example])
}

//TODO: créer un fichier de constantes pour stocker mes valeurs de taille/padding. De façon à modifier directement les valeurs sur le même fichier. Taille de la police, etc. Horaires,Localisation (GPS)

//MARK: fix text size
