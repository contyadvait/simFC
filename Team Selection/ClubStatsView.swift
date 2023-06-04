import SwiftUI

struct ClubStatsView: View {
    @Binding var clubSelected: Team
    @Binding var managerSelected: Manage
    @Binding var openSheet: Bool
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                List {
                    Section("Kits") {
                        KitView(teamSelected: $clubSelected)
                    }
                    TacticsView(manager: $managerSelected)
                    
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
                        Label("E. Haaland, 97, ST/CF, PL TOTS, Starter", systemImage: "figure.soccer")
                        Label("K. De Bruyne, 97, CM/CAM, PL TOTS, Starter", systemImage: "arrow.turn.up.left")
                        Label("R. Dias, 97, CB, PL TOTS, Starter", systemImage: "trophy")
                        Label("Ederson M., 90, GK, FUT Ballers, Starter", systemImage: "hand.raised")
                        Label("J. Grealish, 91, CAM/LM/LW, FUT Ballers, Reserve", systemImage: "soccerball")
                    }
                    // Mockup
                    Section("Overall") {
                        HStack {
                            Spacer()
                            Gauge(value: Double(97)/Double(100)) {
                                Text("Attack")
                            }
                            .gaugeStyle(.accessoryCircularCapacity)
                            Gauge(value: Double(97)/Double(100)) {
                                Text("Midfield")
                            }
                            .gaugeStyle(.accessoryCircularCapacity)
                            Gauge(value: Double((90+97)/2)/Double(100)) {
                                Text("Defence")
                            }
                            .gaugeStyle(.accessoryCircularCapacity)
                            Spacer()
                        }
                    }
                    Section("Close") {
                        Button {
                            openSheet.toggle()
                        } label: {
                            Label {
                                Text("Close")
                            } icon: {
                                Image(systemName: "xmark.circle")
                                    .foregroundColor(.red)
                            }
                        }
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
