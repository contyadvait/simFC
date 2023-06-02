import SwiftUI

struct TacticsView: View {
    @Binding var manager: Manage
    var body: some View {
            if manager == Manage.pepGuardiola {
                    Section("Pep Guardiola's Tactics") {
                        Label("Slight Attacking Tendency", systemImage: "arrow.up.circle")
                        Label("4 CB line with Stones as CDM in attack", systemImage: "arrow.left.and.right")
                        Label("Tends to stay in opponent's half", systemImage: "arrow.up.to.line")
                        Label("Press when possession lost", systemImage: "digitalcrown.horizontal.press")
                    }
            } else {
                Label("Your manager tactics are not available. Coming Soon!", systemImage: "xmark.octagon")
            }
    }
}
