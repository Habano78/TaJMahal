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
                VStack(alignment: .leading, spacing: 20) {
                        HStack {
                                Spacer() //pressionne l’image
                                ZStack(alignment: .topTrailing) {
                                        Image(dish.imageName)
                                                .resizable()
                                                .frame(maxWidth: .infinity) // l'image prend toute la largeur dispo
                                                .scaledToFit()
                                                .clipped()
                                                .cornerRadius(12)
                                                .padding(.horizontal, 10)//marge gauche
                                        SpicyView(dish: dish)
                                                .frame(width: 70, height: 30)
                                                .background(Color.white)
                                                .cornerRadius(18)
                                                .padding(.horizontal, 30)
                                                .padding(.vertical, 10)
                                }
                                Spacer() // pressionne l’image
                        }
                        HStack {
                                Spacer()
                                
                                VStack(alignment: .leading, spacing: 10) {
                                        Section(header: Text("Allergènes:")) {
                                                Text(dish.allergens)
                                                        .font(Constants.FontSize.medium)
                                                        .foregroundStyle(.gray)
                                                        .colorMultiply(.gray)
                                        }
                                        Divider()
                                        Section(header: Text("Ingrédients:")) {
                                                Text(dish.ingredients)
                                                        .font(Constants.FontSize.medium)
                                                        .foregroundStyle(.gray)
                                                        .colorMultiply(.gray)
                                                
                                                NavigationLink {
                                                        MenuView(
                                                                        apetizers: viewModel.apetizerArray,
                                                                        mainCourses: viewModel.mainCourseArray
                                                        )
                                                } label: {
                                                }
                                        }
                                }
                                .padding(.horizontal, 20)
                        }
                }
                .padding(.top, 6)
                .navigationBarTitle(dish.name, displayMode: .inline) // pas de titre dans la barre
                //.toolbar
        }
}

#Preview {
        DetailDishView(
                dish: Dish(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala.", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon.", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche.", spiceLevel: .medium, imageName: "Tikka Masala", price: "13,0"),
        viewModel: ViewModel()
        )
}
