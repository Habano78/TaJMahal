//
//  DetailDishView.swift
//  TaJMahal
//
//  Created by Perez William on 19/03/2025.
//

import SwiftUI

struct DetailDishView: View {
        
        let dish: Dish
        
        var body: some View {

                        Image(dish.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 335) // Valeur prix de la maquette
                                .clipped()
                        
                        VStack(alignment: .leading) {
                                Section(header: Text("Allergènes:")) {
                                        Spacer()
                                        Text(dish.allergens).font(.custom("Plus Jakarta Sans", size: 14))
                                }
                                Divider()
                                Section(header: Text("Ingrédients:")) {
                                        Spacer()
                                        Text(dish.ingredients).font(.custom("Plus Jakarta Sans", size: 14))
                                        
                                        NavigationLink{
                                                MenuView()
                                        } label: {
                                                Text("Retour au menu")
                                        }
                                }.navigationTitle(dish.name)
                        }
        }
}
         
#Preview {
        DetailDishView(dish: Dish(name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Samosas", price : "5,50"))
}
