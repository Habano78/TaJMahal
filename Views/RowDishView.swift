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
                HStack(alignment: .top) {
                        VStack {
                                Image(dish.imageName)
                                        .resizable()
                                        .frame(width:112, height: 86)
                                        .fixedSize()
                                        .cornerRadius(10)
                                        .padding(.leading)
                        } .padding([.top, .bottom], 15)
                        
                        VStack(alignment: .leading, spacing: 10) {
                                Text(dish.name)
                                        .font(Theme.FontSize.medium)
                                        .foregroundColor(Theme.Colors.textGray)
                                        .padding(.top)
                                Text(dish.description)
                                        .font(Theme.FontSize.small)
                                        .foregroundColor(Theme.Colors.textGray)
                                HStack {
                                        Text("\(dish.price) €")
                                                .font(Theme.FontSize.small)
                                                .foregroundColor(Theme.Colors.textGray)
                                        
                                        Spacer()
                                        
                                        SpicyView(dish: dish)
                                                .padding(.trailing, 15)
                                }
                        }.padding(.leading, 8)
                }
                .frame(maxWidth: .infinity) //Le HStack occupe toute la largeur
                .background(Color.white) // Fond blanc pour la carte
                .cornerRadius(12) // Bords arrondis
                .shadow(color: .black.opacity(0.3       ), radius: 2, x: 0, y: 0) // Ombre légère
                .padding(.horizontal, 15) // écarte HStack du bord
        }
}

#Preview {
        RowDishView(dish: Dish.example)
}
