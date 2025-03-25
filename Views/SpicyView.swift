//
//  SpicyView.swift
//  TaJMahal
//
//  Created by Perez William on 19/03/2025.
//

import SwiftUI

struct SpicyView: View {
        
        var dish: Dish

        var body: some View {
                
                HStack(spacing: 4) { 
                    ForEach(0..<3, id: \.self) { index in
                        Image(index < dish.spiceLevel.rawValue ? "chiliRed" : "Piment")
                            .resizable()
                            .frame(width: 12, height: 12)
                    }
                }
        }
}

#Preview {
        SpicyView(dish: Dish(name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Samosas", price : "5,50"))
}
