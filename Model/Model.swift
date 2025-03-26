//
//  Model.swift
//  TaJMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//
import Foundation
import SwiftUI

// Cette enumération répertorie 3 niveaux de piment
enum SpiceLevel: Int, CaseIterable  {
        case light = 1
        case medium = 2
        case hot = 3
}

        
        // Représente l'objet "plat", qui figure sur la carte du menu
        struct Dish: Hashable, Identifiable {
                var id: UUID = UUID() //proprieté rajoutée
                var name: String
                var description: String
                var allergens: String
                var ingredients: String
                var spiceLevel: SpiceLevel
                var imageName: String
                var price: String
                
                
                //faciliter les #Preview sans charger tout le ViewModel
                    static let example = Dish(
                        name: "Chicken Tikka Masala",
                        description: "Poulet mariné, grillé et servi dans une sauce masala crémeuse et légèrement épicée.",
                        allergens: "Lait, yaourt, beurre clarifié",
                        ingredients: "Poulet, tomates, crème, épices indiennes, ail, oignon, coriandre",
                        spiceLevel: .medium,
                        imageName: "TikkaMasala",
                        price: "13,50"
                    )
        }
        
        

