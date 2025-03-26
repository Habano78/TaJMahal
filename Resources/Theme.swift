//
//  Constants.swift
//  TaJMahal
//
//  Created by Perez William on 21/03/2025.
//
// On placera ici les valeurs des constants, comme la taille de la police, les couleurs
// static let
import SwiftUI

struct Theme {

    //Polices maquette
        // Theme.FontSize.small
    struct FontSize {
        static let small = Font.custom("Plus Jakarta Sans", size: 12)
        static let medium = Font.custom("Plus Jakarta Sans", size: 14)
        static let button = Font.custom("Plus Jakarta Sans", size: 16)
        static let large = Font.custom("Plus Jakarta Sans", size: 18)
    }

    //Couleurs de l'app
    struct Colors {
        static let textGray = Color(red: 0.302, green: 0.302, blue: 0.302)
        static let redButton = Color("CustomRed")
        static let background = Color.white

    }

    //Layout / Design
    struct Layout {
        static let cornerRadius: CGFloat = 10
        static let padding: CGFloat = 20
    }
}
