import SwiftUI

struct ClubStatsView: View {
    @Binding var clubSelected: Team
    @Binding var managerSelected: Manage
    var body: some View {
        VStack {
            List {
                Section("Kits") {
                    KitView(teamSelected: $clubSelected)
                        .frame(alignment: .center)
                }
                Section("Tatics") {
                    TacticsView(manager: $managerSelected)
                        .ignoresSafeArea()
                }
                
                // Messing around with this
                // ---------------------------------------------------
                // Section("Players") {
                //   if clubSelected == Team.manchesterCity {
                //       ForEach(manCityPlayers, id: \.self) { player in
                //           Label("\(player.name)", systemImage: "figure.soccer")
                //       }
                //   }
                // }
                // ---------------------------------------------------
                // Mock up:
                // ---------------------------------------------------
                Section("Players") {
                    Label("E. Haaland, 97, ST/CF, PL TOTS", systemImage: "figure.soccer")
                    Label("K. De Bruyne, 97, CM/CAM, PL TOTS", systemImage: "arrow.turn.up.left")
                    Label("R. Dias, 97, CB, PL TOTS", systemImage: "trophy")
                    Label("Ederson M., 97, GK, FUT Ballers", systemImage: "hand.raised")
                }
            }
        }
    }
}

//struct ClubStatsView_Previews: PreviewProvider {
//    @State var clubSelect = Team.manchesterCity
//    static var previews: some View {
//        ClubStatsView()
//    }
//}
