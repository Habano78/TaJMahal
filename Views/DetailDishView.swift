//
//  DetailDishView.swift
//  TaJMahal
//
//  Created by Perez William on 19/03/2025.
//

import SwiftUI

struct DetailDishView: View {
        let dish: Dish
        let viewModel: ViewModel
        
        var body: some View {
                VStack(alignment: .leading, spacing: 15) {
                        
                                ZStack(alignment: .topTrailing) {
                                                Image(dish.imageName)
                                                        .resizable()
                                                        .frame(maxWidth: .infinity) // l'image prend toute la largeur dispo
                                                        .scaledToFit()
                                                        .clipped()
                                                        .cornerRadius(12)
                                                        //.padding(.horizontal)
                                        SpicyView(dish: dish)
                                                .frame(width: 74, height: 22) //valeurs maquette
                                                .background(Color.white)
                                                .cornerRadius(18)
                                                .padding(.top, 15)
                                                .padding(.horizontal,20)
                                }
                                VStack(alignment: .leading, spacing: 10) { //écartement entre les éléments de la VStack
                                        Section(header: Text("Allergènes:")) {
                                                Text(dish.allergens)
                                                        .font(Constants.FontSize.medium)
                                                        .foregroundStyle(.gray)
                                                        .colorMultiply(.gray)
                                                        .multilineTextAlignment(.leading)
                                                        .lineSpacing(1)
                                        }
                                        
                                        Divider()
                                        
                                        Section(header: Text("Ingrédients:")) {
                                                Text(dish.ingredients)
                                                        .font(Constants.FontSize.medium)
                                                        .foregroundStyle(.gray)
                                                        .colorMultiply(.gray)
                                                        .multilineTextAlignment(.leading)
                                                        .lineSpacing(2)
                                                
                                                NavigationLink {
                                                        MenuView(apetizers: viewModel.apetizerArray,
                                                                        mainCourses: viewModel.mainCourseArray)
                                                } label: {
                                                        EmptyView()
                                                }
                                        }
                                }
                }
                .padding(.horizontal, 20)
                .navigationTitle(dish.name)
                .navigationBarTitleDisplayMode(.inline)
        }
}

#Preview {
        DetailDishView(
                dish: Dish(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala.", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon.", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche.", spiceLevel: .medium, imageName: "Tikka Masala", price: "13,0"),
        viewModel: ViewModel()
        )
}
