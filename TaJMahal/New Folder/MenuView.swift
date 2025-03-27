//
//  MenuView.swift
//  TaJMahal
//
//  Created by Amandine Cousin on 31/10/2023.

import SwiftUI

struct MenuView: View {
        let viewModel: ViewModel = ViewModel()
        let apetizers: [Dish]
        let mainCourses: [Dish]
        
        var body: some View {
                List {
                        Section(header: Text("Entrées")
                                .textCase(nil)) {
                                        ForEach(viewModel.apetizerArray, id: \.name) { dish in
                                                ZStack {
                                                        RowDishView(dish: dish)
                                                        NavigationLink(destination: DetailDishView(dish: dish)) {
                                                        } .opacity(0)
                                                }
                                        }
                                }.listRowInsets(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                                                
                        // Il faut garder la Liste. Pas le droit de ScrollView
//                VStack {
//                        VStack(spacing: 14) {
//                                DishSectionView(title: "Entrées", dishes: apetizers) // a supprimer
//                                DishSectionView(title: "Plats Principaux", dishes: mainCourses) // a supprimer
//                        }
//                        .padding(.horizontal, 3)
//                        .padding(.top, -10)
//                        }
                }
                //.listRowSeparator(.hidden)//cacher les separateurs
                .listRowSpacing(15)
                .navigationTitle("Menu")
                .font(Theme.FontSize.large)
                .navigationBarTitleDisplayMode(.inline)//
                .navigationBarHidden(false)
        }
}

#Preview {
        MenuView(apetizers: [Dish.example], mainCourses: [Dish.example])
}

//TODO: créer un fichier de constantes pour stocker mes valeurs de taille/padding. De façon à modifier directement les valeurs sur le même fichier. Taille de la police, etc. Horaires,Localisation (GPS)

//MARK: fix text size
