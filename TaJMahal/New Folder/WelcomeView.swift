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
                NavigationStack {
                        VStack(alignment: .leading, spacing: 15) {
                                Image("TajMahal")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxWidth: .infinity)
                                        .clipped()
                               
                                HStack(alignment: .center) {
                                        VStack(alignment: .leading, spacing: 6) {
                                                Text("Restaurant Indien")
                                                        .font(Theme.FontSize.small)
                                                        .foregroundColor(Theme.Colors.textGray)
                                                Text("Taj Mahal")
                                                        .font(Theme.FontSize.large)
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
                                                .font(Theme.FontSize.small)
                                                .foregroundStyle(.black)
                                        Spacer()
                                        Text("11H30-14h30 . 18h30-22h00")
                                                .font(Theme.FontSize.small)
                                                .foregroundStyle(.black)
                                }
                                HStack {
                                        Image("Icône - Type de Service")
                                        Text("Type de Service")
                                                .font(Theme.FontSize.small)
                                        Spacer()
                                        Text("À emporter")
                                                .font(Theme.FontSize.small)
                                }
                                HStack {
                                        Image("Localisation")
                                        Text("12 Avenue de la Brique-75010 Paris")
                                                .font(Theme.FontSize.small)
                                }
                                HStack {
                                        Image("Site")
                                        Text("www.tajmahal.fr")
                                                .font(Theme.FontSize.small)
                                }
                                HStack {
                                        Image("Téléphone")
                                        Text("06 12 34 56 78")
                                                .font(Theme.FontSize.small)
                                }
                                //Le bouton fait partie de la VStack
                                NavigationLink {
                                        MenuView(
                                                apetizers: viewModel.apetizerArray,
                                                mainCourses: viewModel.mainCourseArray
                                        )
                                } label: {
                                        ZStack {
                                                Color(Theme.Colors.redButton)
                                                        .frame(height: 40)
                                                Text("Accéder au menu")
                                                        .foregroundStyle(.white)
                                                        .font(Theme.FontSize.bold)
                                        }
                                        .frame(maxWidth: .infinity)
                                        .cornerRadius(10)
                                        .padding(.top,10)
                                }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
                        .navigationTitle("")
                        .navigationBarHidden(true) //pas de barre du tout (ni titre, ni flèche)
                }
                .accentColor(.black)
        }
}

#Preview {
        WelcomeView(viewModel: ViewModel())
}
