//
//  MenuView.swift
//  TaJMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
        let viewModel = ViewModel()
        
        var body: some View {

                        ScrollView {
                                VStack(spacing: 14) {
                                        
                                        //Section Entrées
                                        VStack(alignment: .leading, spacing: 8) {
                                                Text("Entrées")
                                                        .font(.custom("Plus Jakarta Sans", size: 14))
                                                        .bold()
                                                        .padding(.leading, 25) // Alignement gauche
                                                        .padding(.top,14)//separe "Entrées" des encadrés
                                                        .padding(.bottom, 2)//
                                                
                                                ForEach(viewModel.apetizerArray) { dish in
                                                        NavigationLink {
                                                                DetailDishView(dish: dish)
                                                        } label: {
                                                                RowDishView(dish: dish)
                                                                        .padding(.vertical, 1) //afin d'écarter les RoWDishView
                                                        }
                                                }
                                        }
                                        
                                        //Section Plats Principaux
                                        // Cette section est égale à la précedente
                                        VStack(alignment: .leading, spacing: 8) {
                                                Text("Plats Principaux")
                                                        .font(.custom("Plus Jakarta Sans", size: 14))
                                                        .bold()
                                                        .padding(.leading, 25) // Alignement gauche
                                                        .padding(.top,1)
                                                        .padding(.bottom, 2)//
                                               
                                                ForEach(viewModel.mainCourseArray) { dish in
                                                        NavigationLink {
                                                                DetailDishView(dish: dish)
                                                        } label: {
                                                                
                                                                RowDishView(dish: dish)
                                                                        .padding(.vertical, 1)
                                                        }
                                                }
                                        }
                                }
                                .padding(.horizontal, 3) //marge gauche/droite de chaque RowDishView
                                .padding(.top, -10) //Monte le top de la VStack principale
                        }
                        .background(Color.orange)
                        .navigationTitle("")
                        .toolbar {
                                ToolbarItem(placement: .principal) {
                                        Text("Menu")
                                                .font(.custom("Plus Jakarta Sans", size: 18))
                                                .foregroundColor(.primary)
                                                .padding(.top, 5) // Ajuste la hauteur du titre pour qu'il s'aligne avec la flèche de retour
                                }
                        }
                
                
        }
}

#Preview {
                MenuView()
}

//TODO: créer un fichier de constantes pour stocker mes valeurs de taille/padding. De façon à modifier directement les valeurs sur le même fichier. Taille de la police, etc.

//MARK:
