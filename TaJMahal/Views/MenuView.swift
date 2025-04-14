import SwiftUI

struct MenuView: View {
        let viewModel: ViewModel
        @Environment(\.dismiss)
        private var dismiss 
        
        var body: some View {
                List {
                       //appels a SectionDishView
                        DishSectionView(title:"Entrées", dishes: viewModel.apetizerArray)
                        DishSectionView(title:"Plats", dishes: viewModel.mainCourseArray)          
                }
                // Modificateurs List
                .listRowSpacing(12)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(false)
                //personalisation de la toolbar
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
