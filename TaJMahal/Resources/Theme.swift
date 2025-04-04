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
    // MARK: - Font Sizes
    struct FontSize {
        static let light = Font.custom("PlusJakartaSans-Light", size: 12)
        static let boldMedium = Font.custom("PlusJakartaSans-Bold", size: 14)
        static let bold = Font.custom("PlusJakartaSans-Bold", size: 18)
        static let extraLight = Font.custom("PlusJakartaSans-ExtraLight", size: 12)
        static let boldPetit = Font.custom("PlusJakartaSans-Bold", size: 12)
        static let extraBold = Font.custom("PlusJakartaSans-ExtraBold", size: 8)
    }
    
    // MARK: - Colors
    struct Colors {
        static let textGray = Color(red: 102 / 255, green: 102 / 255, blue: 102 / 255)
        static let redButton = Color("CustomRed")
        static let background = Color.white
    }
}
