import SwiftUI

struct ContentView: View {
    @State var selectedTeam: Team = .manchesterCity
    @State var managerSelected: Manage = .pepGuardiola
    @State var openTeamSelect: Bool = false
    @State var summonedCredits = false
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue,.cyan, .teal, .mint], startPoint: .bottomLeading, endPoint: .topTrailing)
                .ignoresSafeArea()
            VStack(spacing: 10) {
                Text("Welcome to Sim FC 23!")
                    .font(.title)
                Button {
                    openTeamSelect = true
                } label: {
                    Text("Start")
                        .font(.title3)
                        .foregroundColor(.white)
                }
                .buttonStyle(.borderedProminent)
                
                
                Button {
                    summonedCredits = true
                } label: {
                    Text("Credits")
                        .font(.title3)
                }
                .buttonStyle(.bordered)
                
                .fullScreenCover(isPresented: $openTeamSelect) {
                    TeamSelectView(teamSelected: $selectedTeam, managerSelected: $managerSelected)
                }
                
            }
        }
        .sheet(isPresented: $summonedCredits) {
            CreditsView()
        }
    }
}
