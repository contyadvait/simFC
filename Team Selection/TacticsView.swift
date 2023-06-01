import SwiftUI

struct TacticsView: View {
    @Binding var manager: Manage
    var body: some View {
        ZStack {
            if manager == Manage.pepGuardiola {
                VStack {
                    Text("Pep Guardiola's Tactics")
                    HStack {
                        Image(systemName: "arrow.up.circle")
                            .padding()
                        Text("Slight Attacking Tendency")
                    }
                    HStack {
                        Image(systemName: "arrow.left.and.right")
                            .padding()
                        Text("4 CB line with Stones as CDM in attack")
                    }
                    HStack {
                        Image(systemName: "arrow.up.to.line")
                            .padding()
                        Text("Tends to stay in opponent's half")
                    }
                    HStack {
                        Image(systemName: "digitalcrown.horizontal.press")
                            .padding()
                        Text("Press when possession lost")
                    }
                }
            } else {
                Text("Your manager tactics are not available. Coming Soon!")
            }
        }
        .presentationDetents([.medium])
        .ignoresSafeArea()
    }
}
