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
                .font(Constants.FontSize.medium)
                .padding(.leading, 25)
                .padding(.top)

            ForEach(dishes) { dish in
                NavigationLink {
                    DetailDishView(dish: dish, viewModel: ViewModel())
                } label: {
                    RowDishView(dish: dish)
                        .padding(.vertical, 1)
                }
            }
        }
    }
}

#Preview {
        DishSectionView(title: "Entrées", dishes: [Dish(name: "Biryani aux légumes", description: "Riz parfumé cuit avec des légumes et des épices", allergens: "Noix de cajou, riz", ingredients: "Riz basmati, légumes assortis (carottes, petits pois, haricots verts), noix de cajou, raisins secs, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre", spiceLevel: .medium, imageName: "Biryani", price: "10,50")])
}
