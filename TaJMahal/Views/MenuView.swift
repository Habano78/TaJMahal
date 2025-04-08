//
//  MenuView.swift
//  TaJMahal
//
//  Created by Amandine Cousin on 31/10/2023.

import SwiftUI

struct MenuView: View {
        @ObservedObject var viewModel: ViewModel
        @Environment(\.dismiss) private var dismiss
        
        struct MenuSection {
                let title: String
                let dishes: [Dish]
        }
        
        var body: some View {
                // Création des sections du menu
                let menuSections = [
                        MenuSection(title: "Entrées", dishes: viewModel.apetizerArray),
                        MenuSection(title: "Plats Principaux", dishes: viewModel.mainCourseArray)
                ]
                
                List {
                        ForEach(menuSections, id: \.title) { section in
                                Section {
                                        // parcourir les plats
                                        ForEach(section.dishes) { dish in
                                                ZStack {
                                                        RowDishView(dish: dish)
                                                        NavigationLink(destination: DetailDishView(dish: dish)) {
                                                                // contenu invisible, NavigationLink se superpose à la cellule
                                                        }.opacity(0)
                                                }
                                        }
                                } header: {
                                        Text(section.title)
                                                .textCase(nil)
                                                .foregroundColor(Theme.Colors.textGray)
                                                .font(Theme.FontSize.boldMedium)
                                                .padding(.bottom)
                                }
                                .listRowInsets(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                        }
                }
                .listRowSpacing(12)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(false)
                .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                                        Button(action: {
                                                dismiss()
                                        }) {
                                                Image(systemName: "chevron.left")
                                                        .foregroundColor(.black)
                                        }
                        }
                        ToolbarItem(placement: .principal) {
                                Text("Menu")
                                        .font(Theme.FontSize.bold)
                                        .foregroundColor(.black)
                        }
                }
        }
}

#Preview {
        NavigationView{
                MenuView(viewModel: ViewModel())
        }
}
