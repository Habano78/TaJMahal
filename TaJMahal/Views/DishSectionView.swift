//
//  DishSectionView.swift
//  TaJMahal
//
//  Created by Perez William on 23/03/2025.
//
import SwiftUI

struct DishSectionView: View {
        let dishes: [Dish]
        
        var body: some View {
                
                VStack(spacing: 8) {
                        
                        ForEach(dishes) { dish in
                                NavigationLink {
                                        DetailDishView(dish: dish)
                                }
                                label: {
                                        RowDishView(dish: dish)
                                                .padding(.vertical, 1)
                                }
                        }
                }
                .padding(.vertical,5)
        }
}

#Preview {
        DishSectionView(dishes: [Dish.example])
}
