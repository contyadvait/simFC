import SwiftUI

struct TeamSelectView: View {
    @Binding var teamSelected: Team
    @Binding var managerSelected: Manage
    @Environment(\.dismiss) var dismiss
    @State var viewTactics = false
    @State var openClubStats = false
    var body: some View {
        VStack {
            Text("Team Select")
                .font(.title)
            List {
                    Picker("Football Club", selection: $teamSelected) {
                        Text("Manchester City FC").tag(Team.manchesterCity)
                        Text("Liverpool FC").tag(Team.liverpoolFC)
                        Text("Real Madrid CF").tag(Team.realMadridCF)
                        Text("Barcelona FC").tag(Team.barcelonaFC)
                        Text("Olympique Marseile").tag(Team.marseile)
                        Text("Paris-Saint Germain").tag(Team.pSG)
                        Text("FC Bayern Munich").tag(Team.bayernMunich)
                    }
                    .pickerStyle(.inline)
                    Picker("Coach", selection: $managerSelected) {
                        Text("Pep Guardiola").tag(Manage.pepGuardiola)
                        Text("Jurgen Klopp").tag(Manage.jurgenKloop)
                        Text("Carlo Ancelloti").tag(Manage.carloAncelloti)
                        Text("Xavi Hernandez").tag(Manage.xaviHernandez)
                    }
                    .pickerStyle(.inline)
                Section("General") {
                    Button {
                        openClubStats = true
                    } label: {
                        HStack {
                            Image(systemName: "soccerball")
                            Text("Club Stats")
                        }
                    }
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "restart.circle.fill")
                                .rotationEffect(Angle(degrees: 180))
                            Text("Start")
                        }
                    }
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "xmark.circle.fill")
                            Text("Close")
                        }
                    }
                }
            }
            .listStyle(.sidebar)
            .sheet(isPresented: $viewTactics) {
                TacticsView(manager: $managerSelected)
            }
                        .sheet(isPresented: $openClubStats) {
                            ClubStatsView(clubSelected: $teamSelected, managerSelected: $managerSelected)
                        }
        }
    }
}
