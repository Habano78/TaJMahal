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
                        Spacer().frame(width: 12) // écarte l'image du bord du HStack
                        Image(dish.imageName)
                                .resizable()
                                .frame(width:112, height: 86)
                                .cornerRadius(8)
                        Spacer().frame(width: 16) // écarte l'image du text
                        
                        VStack(alignment: .leading, spacing: 8) {
                                Text(dish.name)
                                        .font(.custom("Plus Jakarta Sans", size: 14))
                                        .padding(.top)
                                        .foregroundStyle(.black)
                                
                                Text(dish.description)
                                        .font(.custom("Plus Jakarta Sans", size: 12))
                                        .foregroundStyle(.white)
                                        .colorMultiply(.gray)
                                        .fixedSize(horizontal: false, vertical: true) // Forcer le texte a prendre la verticale
                                
                                HStack {
                                        Text("\(dish.price) €")
                                                .font(.custom("Plus Jakarta Sans", size: 12))
                                                .foregroundStyle(.black)
                                        Spacer()
                                        
                                        SpicyView(dish: dish)
                                                .padding()
                                }
                        }
                }
                .background(Color.white) // Fond blanc pour la carte
                .cornerRadius(12) // Bords arrondis
                .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2) // Ombre légère
                .padding(.horizontal,15) // écartement H par rapport aux bords
                .frame(width: 400, height: 110) // la valeur width de la maquette est 335
        }
}

#Preview {
        RowDishView(dish: Dish(name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Samosas", price : "5,50"))
}
