import SwiftUI

struct MenuView: View {
    let viewModel: ViewModel
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        List {
            //Entrées
            Section {
                ForEach(viewModel.apetizerArray) { dish in
                    ZStack {
                        RowDishView(dish: dish)
                        NavigationLink(destination: DetailDishView(dish: dish)) {
                        }.opacity(0)
                    }
                }
            } header: {
                Text("Entrées")
                    .textCase(nil)
                    .foregroundColor(Theme.Colors.textGray)
                    .font(Theme.FontSize.boldMedium)
                    .padding(.bottom)
            }
            .listRowInsets(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))

            // Plats Principaux
            Section {
                ForEach(viewModel.mainCourseArray) { dish in
                    ZStack {
                        RowDishView(dish: dish)
                        NavigationLink(destination: DetailDishView(dish: dish)) {
                        }.opacity(0)
                    }
                }
            } header: {
                Text("Plats Principaux")
                    .textCase(nil)
                    .foregroundColor(Theme.Colors.textGray)
                    .font(Theme.FontSize.boldMedium)
                    .padding(.bottom)
            }
            .listRowInsets(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))

        }
        // Modificateurs de List et Toolbar
        .listRowSpacing(12)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(false)
        .toolbar {
             ToolbarItem(placement: .navigationBarLeading) {
                 Button(action: { dismiss() }) {
                     Image(systemName: "chevron.left").foregroundColor(.black)
                 }
             }
             ToolbarItem(placement: .principal) {
                 Text("Menu").font(Theme.FontSize.bold).foregroundColor(.black)
             }
        }
    }
}

#Preview {
    NavigationView{
        MenuView(viewModel: ViewModel())
    }
}
