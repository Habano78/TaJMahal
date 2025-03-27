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
                                .aspectRatio(contentMode: .fill)
                                .frame(width:112, height: 86)
                                .fixedSize()
                                .cornerRadius(10)
                                .padding(5)
                        
                        VStack(alignment: .leading, spacing: 8) {
                                Text(dish.name)
                                        .font(Theme.FontSize.medium)
                                        .foregroundColor(Theme.Colors.textGray)
                                        .padding(.top)
                                Text(dish.description)
                                        .font(Theme.FontSize.small)
                                        .foregroundColor(Theme.Colors.textGray)
                              
                                HStack(alignment: .firstTextBaseline){
                                        Text("\(dish.price) €")
                                                .font(Theme.FontSize.small)
                                                .foregroundColor(Theme.Colors.textGray)
                                        
                                        Spacer()
                                        
                                        SpicyView(dish: dish)
                                            //    .padding(.trailing, 15)
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
