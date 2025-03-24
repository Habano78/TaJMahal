//
//  Components.swift
//  TaJMahal
//
//  Created by Perez William on 21/03/2025.
//

import Foundation
import SwiftUI

//SwiftUI ne permet pas l’alignement justifié.  UIKit oui. UIViewRepresentable est un pont entre ces deux UI
//UIViewRepresentable est un protocole SwiftUI qui permet de réutiliser une vue UIKit (comme UILabel, UITextView, UIButton, etc.) dans SwiftUI. Il permet de mélanger UIKit et SwiftUI, pour utiliser des choses que SwiftUI ne gère pas encore nativement, comme l’alignement justifié, la sélection de texte, l'animation. UIViewRepresentable sert aussi à créer des composants avancéss, comme Carte Google Maps.

struct JustifiedText: UIViewRepresentable {
    let text: String
    let font: UIFont

    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .justified
        label.font = font
        return label
    }

    func updateUIView(_ uiView: UILabel, context: Context) {
        uiView.text = text
    }
}
