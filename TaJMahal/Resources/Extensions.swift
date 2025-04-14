//
//  Extensions.swift
//  TaJMahal
//
//  Created by Perez William on 03/04/2025.
//
import Foundation

/// Extension pour afficher un montant en euros, avec le format français
extension Decimal {
    var formattedPrice: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "fr_FR")
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        
        // On récupère le texte formaté
        let formatted = formatter.string(from: self as NSDecimalNumber) ?? ""
        
        // Supprime tous les espaces (ou juste insécable si tu veux être plus précis)
        return formatted.replacingOccurrences(of: "\u{00a0}", with: "") // supprime l’espace insécable comme dans la maquette 
    }
}


@propertyWrapper
struct Uppercase {
    private var value: String = ""

    var wrappedValue: String {
        get { value.uppercased() }
        set { value = newValue }
    }
}
