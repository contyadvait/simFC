import SwiftUI

struct CreditsView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.accentColor, .red, .pink], startPoint: .topLeading, endPoint: .bottomTrailing)
            VStack {
                Text("Credits")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                Text("Made by Advait Contractor")
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding()
                Text("All likenesses of players are decided by ©FIFPRO and all players ratings are correct as of their best card on FIFA 23 UT.")
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .foregroundColor(.white)
                    .padding()
                Text("Thanks to Vecteezy.com for the provision of the football pitch in-game.")
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .foregroundColor(.white)
                    .padding()
            }
        }
        .ignoresSafeArea()
        .presentationDetents([.medium])
    }
}
