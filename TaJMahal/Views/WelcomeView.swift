//
//  WelcomeView.swift
//  TaJMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
        let viewModel: ViewModel
        
        var body: some View {
                        VStack(alignment: .leading, spacing: 15) {
                                Image("TajMahal")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxWidth: .infinity)
                                        .clipped()
                               
                                HStack(alignment: .center) {
                                        VStack(alignment: .leading, spacing: 6) {
                                                Text("Restaurant Indien")
                                                        .font(Theme.FontSize.light)
                                                        .foregroundColor(Theme.Colors.textGray)
                                                Text("Taj Mahal")
                                                        .font(Theme.FontSize.bold)
                                        }
                                        .frame(width: 280, alignment: .leading)
                                        
                                        Image("Logo")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                                .colorMultiply(.gray)
                                }
                                .padding(.top, 20)
                                
                                HStack(alignment: .bottom) {
                                        Image("Vector")
                                        Text("Mardi")
                                                .font(Theme.FontSize.light)
                                                .foregroundStyle(.black)
                                        Spacer()
                                        Text("11H30-14h30 . 18h30-22h00")
                                                .font(Theme.FontSize.light)
                                                .foregroundStyle(.black)
                                }
                                HStack {
                                        Image("Icône - Type de Service")
                                        Text("Type de Service")
                                                .font(Theme.FontSize.light)
                                        Spacer()
                                        Text("À emporter")
                                                .font(Theme.FontSize.light)
                                }
                                HStack {
                                        Image("Localisation")
                                        Text("12 Avenue de la Brique-75010 Paris")
                                                .font(Theme.FontSize.light)
                                }
                                HStack {
                                        Image("Site")
                                        Text("www.tajmahal.fr") //TODO: link?
                                                .font(Theme.FontSize.light)
                                }
                                HStack {
                                        Image("Téléphone")
                                        Text("06 12 34 56 78")
                                                .font(Theme.FontSize.light)
                                }
                                //Le bouton fait partie de la VStack
                                NavigationLink {
                                        MenuView()
                                } label: {
                                        ZStack {
                                                Color(Theme.Colors.redButton)
                                                        .frame(width: 335, height: 40)
                                                        .cornerRadius(10)
                                                Text("Accéder au menu")
                                                        .foregroundStyle(.white)
                                                        .font(Theme.FontSize.bold)
                                        }
                                        .frame(maxWidth: .infinity)
                                        .padding(.top,10)
                                }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
                        .navigationTitle("")
                        .navigationBarHidden(true) //pas de barre du tout (ni titre, ni flèche)
               
        }
}

#Preview {
        WelcomeView(viewModel: ViewModel())
}
