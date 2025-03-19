//
//  WelcomeView.swift
//  TaJMahal
//
//  Created by Amandine Cousin on 31/10/2023.

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
        var body: some View {
                
                NavigationStack {
                        Image("TajMahal")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 335) // Valeur prix de la maquette
                                .clipped() // Clips view to its bounding frame
                        
                        VStack(alignment: .leading, spacing: 15) {
                                HStack (alignment: .center){
                                        
                                        VStack(alignment: .leading, spacing: 6) {
                                                
                                                Text("Restaurant Indien")
                                                        .fontWeight(.black)
                                                        .font(.custom("Plus Jakarta Sans", size: 12))
                                                        .foregroundStyle(.white)
                                                        .colorMultiply(.gray)
                                                Text("Taj Mahal") // impossible de appliquer bold
                                                        .foregroundStyle(.black)
                                                        .font(.headline)
                                                        //.foregroundStyle(.secondary)
                                                        .font(.system(size: 18, weight: .bold, design: .default))
                                                
                                        }.frame(width: 280, alignment: .leading)
                                        
                                        Image("Logo")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50) // Taille de l'icone
                                                .colorMultiply(.gray)
                                }
                                .padding(.top, 20) // ici s'agit seulement sur la première HStack
                                
                                HStack (alignment: .bottom){
                                        
                                        Image("Vector")
                                        Text("Mardi")
                                                .font(.custom("Plus Jakarta Sans", size: 12))
                                                .foregroundStyle(.black)
                                        Spacer()
                                        
                                        Text("11H30-14h30 . 18h30-22h00") // MODIFIER POUR
                                                .font(.custom("Plus Jakarta Sans", size: 12))
                                                .foregroundStyle(.black)
                                                .padding(.top, 25)
                                }
                                
                                HStack {
                                        
                                        Image("Icône - Type de Service")
                                        
                                        Text("Type de Service")
                                                .font(.custom("Plus Jakarta Sans", size: 12))
                                                
                                        Spacer()
                                        
                                        Text("À emporter")
                                                .font(.custom("Plus Jakarta Sans", size: 12))
                                }
                                HStack {
                                        
                                        Image("Localisation")
                                        
                                        Text("12 Avenue de la Brique-75010 Paris")
                                                .font(.custom("Plus Jakarta Sans", size: 12))
                                }
                                HStack{
                                        Image("Site")
                                        
                                        Text("www.tajmahal.fr")
                                                .font(.custom("Plus Jakarta Sans", size: 12))
                                }
                                HStack{
                                        Image("Téléphone")
                                        
                                        Text("06 12 34 56 78")
                                                .font(.custom("Plus Jakarta Sans", size: 12))
                                }
                        }
                        .frame(width: 335, alignment:.leading) // agit sur LA  VStack
                        
                        NavigationLink {
                                MenuView()
                        } label : {
                                ZStack {
                                        Color("CustomRed").frame(height: 40)
                                        Text("Accéder au menu").foregroundStyle(.white).font(.headline).font(.custom("Plus Jakarta Sans", size: 18))
                                }
                                .frame(width: 335) // Fixed width
                                .cornerRadius(8) // la curvature du button
                                .padding(.top, 30)
                        }
                        .navigationBarBackButtonHidden(false) // garder le bouton de retour
                        .navigationBarTitle("", displayMode: .inline)//cacher le mot "menu"
                        
                }
                .frame(maxWidth: .infinity, alignment:. leading)
                .padding(.top,1) //a la NavigationStack
                .accentColor(.black)
        }
}
#Preview {
        WelcomeView()
}

