//
//  MenuView.swift
//  TaJMahal
//
//  Created by Amandine Cousin on 31/10/2023.

import SwiftUI

struct MenuView: View {
    let viewModel = ViewModel()
    
    var body: some View {
            
        List {
            Section(header: Text("Entrées")
                    .textCase(nil)) {
                ForEach(viewModel.apetizerArray, id: \.name) { dish in
                    ZStack {
                        RowDishView(dish: dish)
                        NavigationLink(destination: DetailDishView(dish: dish)) {
                        } .opacity(0)
                    }
                }
            }.listRowInsets(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
            
            Section(header: Text("Plats Principaux")
                    .textCase(nil)) {
                ForEach(viewModel.mainCourseArray, id: \.name) { dish in
                    ZStack {
                        RowDishView(dish: dish)
                        NavigationLink(destination: DetailDishView(dish: dish)) {
                        } .opacity(0)
                    }
                }
            }.listRowInsets(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
        }
        .listRowSpacing(15)
        .navigationTitle("Menu")
        .font(Theme.FontSize.boldMedium)
        .foregroundColor(Color.gray)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(false)
    }
}

#Preview {
    MenuView()
}

//TODO: créer un fichier de constantes pour stocker mes valeurs de taille/padding. De façon à modifier directement les valeurs sur le même fichier. Taille de la police, etc. Horaires,Localisation (GPS)

//MARK: fix text size
