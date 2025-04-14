//
//  DIshSectionView.swift
//  TaJMahal
//
//  Created by Perez William on 14/04/2025.
//

import SwiftUI

struct DishSectionView: View {
        //cette vue doit recevoir deux paramètre pour être créée: un titre et une liste de plats
        let title: String
        let dishes: [Dish]
        
        var body: some View {
                Section(header:
                    Text(title)
                        .textCase(nil)
                        .foregroundColor(Theme.Colors.textGray)
                        .font(Theme.FontSize.boldMedium)
                        .padding(.bottom)
                ) {
                    ForEach(dishes) { dish in
                        ZStack {
                            RowDishView(dish: dish)
                            NavigationLink(destination: DetailDishView(dish: dish)) {
                            }.opacity(0)
                        }
                    }
                }
                .listRowInsets(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
            }
        }
