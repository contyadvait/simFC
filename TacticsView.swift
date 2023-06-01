import SwiftUI

struct TacticsView: View {
    @Binding var manager: Manage
    var body: some View {
        ZStack {
            if manager == Manage.pepGuardiola {
                LinearGradient(colors: [KitColors.manCityHome, KitColors.manCityAway, KitColors.manCityThird], startPoint: .bottomLeading, endPoint: .topTrailing)
                VStack {
                    Text("Tactics (Man City Profile)")
                        .foregroundColor(.white)
                    HStack {
                        Image(systemName: "arrow.up.circle")
                            .padding()
                            .foregroundColor(.white)
                        Text("Slight Attacking Tendency")
                            .foregroundColor(.white)
                    }
                    HStack {
                        Image(systemName: "arrow.left.and.right")
                            .foregroundColor(.white)
                            .padding()
                        Text("4 CB line with Stones as CDM in attack")
                            .foregroundColor(.white)
                    }
                    HStack {
                        Image(systemName: "arrow.up.to.line")
                            .foregroundColor(.white)
                            .padding()
                        Text("Tends to stay in opponent's half")
                            .foregroundColor(.white)
                    }
                    HStack {
                        Image(systemName: "digitalcrown.horizontal.press")
                            .foregroundColor(.white)
                            .padding()
                        Text("Press when possession lost")
                            .foregroundColor(.white)
                    }
                    Text("_swipe down to dismiss_")
                        .foregroundColor(.white)
                }
            } else {
                Text("Your manager tactics are not available. Coming Soon!")
            }
        }
        .presentationDetents([.medium])
        .ignoresSafeArea()
    }
}
