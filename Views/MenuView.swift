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
                            
                        VStack(spacing: 14) {
                            DishSectionView(title: "Entrées", dishes: apetizers)
                            DishSectionView(title: "Plats Principaux", dishes: mainCourses)
                        }
                        .padding(.horizontal, 3)
                        .padding(.top, -10)
                    }
                    .navigationTitle("Menu")
                    .font(Constants.FontSize.large)
                    .navigationBarTitleDisplayMode(.inline)
                    
            }
        }

#Preview {
        MenuView(apetizers: [Dish(name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Samosas", price : "5,50")], mainCourses: [Dish(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala.", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon.", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche.", spiceLevel: .medium, imageName: "Tikka Masala", price: "13,0")])
}

//TODO: créer un fichier de constantes pour stocker mes valeurs de taille/padding. De façon à modifier directement les valeurs sur le même fichier. Taille de la police, etc. Horaires,Localisation (GPS)

//MARK: fix text size
