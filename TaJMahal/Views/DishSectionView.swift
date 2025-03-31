//
//  DishSectionView.swift
//  TaJMahal
//
//  Created by Perez William on 23/03/2025.
//
import SwiftUI

struct DishSectionView: View {
    let title: String
    let dishes: [Dish]

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(Theme.FontSize.boldMedium)
                .padding(.leading, 25)
                .padding(.top)

            ForEach(dishes) { dish in
                NavigationLink {
                    DetailDishView(dish: dish)
                } label: {
                    RowDishView(dish: dish)
                        .padding(.vertical, 1)
                }
            }
        }
    }
}

#Preview {
        DishSectionView(title: "Entrées",
                        dishes: [Dish.example])
}
