//
//  Constants.swift
//  TaJMahal
//
//  Created by Perez William on 21/03/2025.
//
// On placera ici les valeurs des constants, comme la taille de la police, les couleurs
// static let
import Foundation
import SwiftUI

struct Constants {
        
        // pour m'en servir faire : .font(Constants.FontSize.medium)
        struct FontSize {
                static let small = Font.custom("Plus Jakarta Sans", size: 12)
                static let medium = Font.custom("Plus Jakarta Sans", size: 14)
                static let button = Font.custom("Plus Jakarta Sans", size: 16)
                static let large = Font.custom("Plus Jakarta Sans", size: 18)
        }
        //Couleur grise de la maquette.
        //Pour m'en servir faire : .foregroundColor(Constants.FontColor.color)
        struct FontColor {
                static let color = Color(red: 0.302, green: 0.302, blue: 0.302)
        }
}
