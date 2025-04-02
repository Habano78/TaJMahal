//
//  MenuView.swift
//  TaJMahal
//
//  Created by Amandine Cousin on 31/10/2023.

import SwiftUI

struct MenuView: View {
    let viewModel = ViewModel()
    
    // Structure pour les sections du menu
    struct MenuSection {
        let title: String
        let dishes: [Dish]
    }
    
    var body: some View {
        // Créer les sections du menu
        let menuSections = [
            MenuSection(title: "Entrées", dishes: viewModel.apetizerArray),
            MenuSection(title: "Plats Principaux", dishes: viewModel.mainCourseArray)
        ]
        
        List {
            ForEach(menuSections, id: \.title) { section in
                Section {
                    // Utilisation de la même approche que l'original avec ZStack et opacité
                    ForEach(section.dishes, id: \.name) { dish in
                        ZStack {
                            RowDishView(dish: dish)
                            NavigationLink(destination: DetailDishView(dish: dish)) {
                            }.opacity(0)
                        }
                    }
                } header: {
                    Text(section.title)
                        .textCase(nil)
                        .foregroundColor(Theme.Colors.textGray)
                        .font(Theme.FontSize.boldMedium)
                        .padding(.bottom)
                }
                .listRowInsets(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
            }
        }
        .listRowSpacing(15)
        .navigationTitle("Menu")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(false)
    }
}

#Preview {
        NavigationView{
                MenuView()
        }
}

//TODO: créer un fichier de constantes pour stocker mes valeurs de taille/padding. De façon à modifier directement les valeurs sur le même fichier. Taille de la police, etc. Horaires,Localisation (GPS)

//MARK: fix text size
