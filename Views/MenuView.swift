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
                                VStack(spacing: 16) {
                                        
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
                                                                        .padding(.vertical, 4) //afin d'écarter les RoWDishView
                                                        }
                                                }
                                        }
                                        
                                        //Section Plats Principaux
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
                                                                        .padding(.vertical, 4)
                                                        }
                                                }
                                        }
                                }
                                .padding(.horizontal) //Assurer une bonne marge à gauche/droite
                                .padding(.top, -10) //Monte le top de la VStack principale
                               // .padding(.bottom, 60)
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
