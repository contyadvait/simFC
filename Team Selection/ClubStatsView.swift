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
                    Label("Ederson M., 90, GK, FUT Ballers", systemImage: "hand.raised")
                }
                Section("Overall") {
                    HStack {
                        Spacer()
                        Gauge(value: Double(97/100)) {
                            Text("Attack")
                        }
                        .gaugeStyle(.accessoryCircularCapacity)
                        Gauge(value: Double(97/100)) {
                            Text("Midfield")
                        }
                        .gaugeStyle(.accessoryCircularCapacity)
                        Gauge(value: Double((90+97)/100)) {
                            Text("Defence")
                        }
                        .gaugeStyle(.accessoryCircularCapacity)
                        Spacer()
                    }
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
