//
//  DetailDishView.swift
//  TaJMahal
//
//  Created by Perez William on 19/03/2025.
//

import SwiftUI

struct DetailDishView: View {
        let dish: Dish
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
                                        .frame(width: 74, height: 22) //valeurs maquette
                                        .background(Theme.Colors.background)
                                        .cornerRadius(10)
                                        .padding(.top, 15)
                                        .padding(.horizontal,20)
                        }
                        VStack(alignment: .leading, spacing: 10) { //écartement entre les éléments de la VStack
                                Section(header: Text("Allergènes:")) {
                                        Text(dish.allergens)
                                                .font(Theme.FontSize.extraLight)
                                                .foregroundColor(Color(red: 0.302, green: 0.302, blue: 0.302))
                                                .multilineTextAlignment(.leading)
                                                .lineSpacing(2)
                                }
                                
                                Divider()
                                
                                Section(header: Text("Ingrédients:")) {
                                        Text(dish.ingredients)
                                                .font(Theme.FontSize.extraLight)
                                                .foregroundColor(Theme.Colors.textGray)
                                                .multilineTextAlignment(.leading) //simple retour a la ligne
                                                .frame(maxWidth: .infinity, alignment: .leading) //Force le texte aller à gauche
                                                .lineSpacing(2) 
                                }
                        }
                }
                //SwiftUI affiche le titre de la vue précédente dans le bouton retour par défaut.Cette solution permet de cacher "Menu"
                //SwiftUI ignore .font(...) sur navigationTitle.
                .padding(.horizontal, 20)
                .navigationTitle(dish.name)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
                .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                                Button(action: {
                                        dismiss()
                                }) {
                                        Image(systemName: "chevron.left")
                                                .foregroundColor(.black)
                                }
                        }
                }
        }
}

#Preview {
        DetailDishView(dish: Dish.example)
}

