//
//  RowDishView.swift
//  TaJMahal
//
//  Created by Perez William on 19/03/2025.
//

import SwiftUI

struct RowDishView: View {
        let dish: Dish

        var body: some View {
                HStack {
                        
                        Image(dish.imageName)
                                .resizable()
                                .frame(width:120, height: 90)
                                .cornerRadius(8)
                               .padding(.leading, 4)//separe l'image du bord
                        Spacer().frame(width: 20) // écarte l'image du text
                        
                        VStack(alignment: .leading, spacing: 10) {
                                //Spacer().frame(height: 8)
                                Text(dish.name)
                                     .font(Constants.FontSize.medium)
                                        .padding(.top)
                                        .foregroundStyle(.black)
                                
                                Text(dish.description)
                                     .font(Constants.FontSize.small)
                                        .foregroundStyle(.white)// avec la ligne qui suit, rend la couleur gris
                                        .colorMultiply(.gray)
                                        .fixedSize(horizontal: false, vertical: true) // Forcer le texte a prendre la verticale
                                        .frame(maxWidth: 180, alignment: .leading) //Évite que le texte aille trop à droite
                                HStack {
                                        Text("\(dish.price) €")
                                             .font(Constants.FontSize.small)
                                                .foregroundStyle(.black)
                                        
                                        SpicyView(dish: dish)
                                                .padding(.leading, 75)
                                }
                        }
                }
                .frame(maxWidth: .infinity) //Le HStack occupe toute la largeur
                .background(Color.white) // Fond blanc pour la carte
                .cornerRadius(12) // Bords arrondis
                .shadow(color: .black.opacity(0.6), radius: 4, x: 0, y: 2) // Ombre légère
                .padding(.horizontal, 20) // écarte HStack du bord
        }
}

#Preview {
        RowDishView(dish: Dish(name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Samosas", price : "5,50"))
}
