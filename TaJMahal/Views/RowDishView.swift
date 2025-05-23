//
//  RowDishView.swift
//  TaJMahal
//
//  Created by Perez William on 19/03/2025.
//

import SwiftUI

struct RowDishView: View {
        //pour construire cette vue on doit lui fournir un plat en paramètre
        let dish: Dish
        
        var body: some View {
                HStack {
                        
                        Image(dish.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:112, height: 86)
                                .fixedSize()
                                .cornerRadius(10)
                                .padding(5)
                        
                        VStack(alignment: .leading, spacing: 8) {
                                Text(dish.name)
                                        .font(Theme.FontSize.boldMedium)
                                        .foregroundColor(Theme.Colors.textGray)
                                        .padding(.top)
                                Text(dish.description)
                                        .font(Theme.FontSize.extraLight)
                                        .foregroundColor(Theme.Colors.textGray)
                                HStack(alignment: .firstTextBaseline){
                                        Text(dish.price.formattedPrice)
                                                .font(Theme.FontSize.boldPetit)
                                                .foregroundColor(Theme.Colors.textGray)
                                        Spacer()
                                        SpicyView(dish: dish)
                                }
                        }
                        .padding(.leading, 4)
                        .padding(.trailing, 10)
                }
        }
}

#Preview {
        RowDishView(dish: Dish.example)
}
