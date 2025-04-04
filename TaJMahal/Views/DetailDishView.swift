//
//  DetailDishView.swift
//  TaJMahal
//
//  Created by Perez William on 19/03/2025.
//

import SwiftUI

struct DetailDishView: View {
        let dish: Dish// instance de Dish
        @Environment(\.dismiss) private var dismiss // pour gérer le retour
        
        var body: some View {
                VStack(alignment: .leading, spacing: 20) {
                        ZStack(alignment: .topTrailing) {
                                Image(dish.imageName)
                                        .resizable()
                                        .frame(maxWidth: .infinity) // l'image prend toute la largeur dispo
                                        .scaledToFit()
                                        .clipped()
                                        .cornerRadius(12)
                                SpicyView(dish: dish)
                                        .frame(width: 74, height: 22)
                                        .background(Theme.Colors.background)
                                        .cornerRadius(10)
                                        .padding(.top, 15)
                                        .padding(.horizontal,20)
                        }
                        VStack(alignment: .leading, spacing: 10) {
                                Section {
                                        Text(dish.allergens)
                                                .font(Theme.FontSize.extraLight)
                                                .foregroundColor(Theme.Colors.textGray)
                                                .multilineTextAlignment(.leading)
                                                .lineSpacing(2)
                                } header: {
                                        Text("Allergènes:")
                                                .font(Theme.FontSize.boldMedium)
                                                .foregroundColor(Theme.Colors.textGray)
                                }
                                
                                Divider()
                                
                                Section{
                                        Text(dish.ingredients)
                                                .font(Theme.FontSize.extraLight)
                                                .foregroundColor(Theme.Colors.textGray)
                                                .multilineTextAlignment(.leading) //simple retour a la ligne
                                                .frame(maxWidth: .infinity, alignment: .leading) //Force le texte aller à gauche
                                                .lineSpacing(2)
                                } header: {
                                        Text("Ingrédients:")
                                                .font(Theme.FontSize.boldMedium)
                                                .foregroundColor(Theme.Colors.textGray)
                                }
                        }
                }
                //SwiftUI affiche le titre de la vue précédente dans le bouton retour par défaut.Cette solution permet de cacher "Menu"
                .padding(.horizontal, 20)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
                .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                                HStack {
                                        Button(action: {
                                                dismiss()
                                        }) {
                                                Image(systemName: "chevron.left")
                                                        .foregroundColor(.black)
                                        }
                                        Text(dish.name)
                                                .font(Theme.FontSize.bold)
                                                .foregroundColor(.black)
                                                .padding(.leading, 8)
                                }
                                
                        }
                }
        }
}

#Preview {
        NavigationView {
                DetailDishView(dish: Dish.example)
        }
}

