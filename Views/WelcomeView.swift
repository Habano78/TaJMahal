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
                                                     .font(Constants.FontSize.small)
                                                        .foregroundStyle(.white)
                                                        .colorMultiply(.gray)
                                                Text("Taj Mahal")
                                                        .font(Constants.FontSize.large)
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
                                                .font(Constants.FontSize.small)
                                                .foregroundStyle(.black)
                                        Spacer()
                                        Text("11H30-14h30 . 18h30-22h00")
                                                .font(Constants.FontSize.small)
                                                .foregroundStyle(.black)
                                }
                                HStack {
                                        Image("Icône - Type de Service")
                                        Text("Type de Service")
                                                .font(Constants.FontSize.small)
                                        Spacer()
                                        Text("À emporter")
                                                .font(Constants.FontSize.small)
                                }
                                HStack {
                                        Image("Localisation")
                                        Text("12 Avenue de la Brique-75010 Paris")
                                                .font(Constants.FontSize.small)
                                }
                                HStack {
                                        Image("Site")
                                        Text("www.tajmahal.fr")
                                                .font(Constants.FontSize.small)
                                }
                                
                                HStack {
                                        Image("Téléphone")
                                        Text("06 12 34 56 78")
                                                .font(Constants.FontSize.small)
                                }
                                //Le bouton fait partie de la VStack
                                NavigationLink {
                                        MenuView(
                                                                apetizers: viewModel.apetizerArray,
                                                                mainCourses: viewModel.mainCourseArray
                                                            )
                                } label: {
                                        ZStack {
                                                Color("CustomRed")
                                                        .frame(height: 40)
                                                Text("Accéder au menu")
                                                        .foregroundStyle(.white)
                                                        .font(Constants.FontSize.button)
                                        }
                                        .frame(maxWidth: .infinity)
                                        .cornerRadius(8)
                                        .padding(.top,10)
                                }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
                        .navigationBarBackButtonHidden(false)
                        .navigationBarTitle("", displayMode: .inline)
                }
                .accentColor(.black)
        }
}

#Preview {
        WelcomeView(viewModel: ViewModel())
}
