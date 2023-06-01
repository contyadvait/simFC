import SwiftUI

struct KitView: View {
    @Binding var teamSelected: Team
    var body: some View {
        if teamSelected == Team.manchesterCity {
            HStack {
                Text("Kits")
                    .font(.headline)
                    .padding()
                VStack {
                    Text("Home")
                        .padding()
                    Image(systemName: "tshirt.fill")
                        .foregroundColor(KitColors.manCityHome)
                }
                
                VStack {
                    Text("Away")
                        .padding()
                    Image(systemName: "tshirt.fill")
                        .foregroundColor(KitColors.manCityAway)
                }
                
                VStack {
                    Text("Third")
                        .padding()
                    Image(systemName: "tshirt.fill")
                        .foregroundColor(KitColors.manCityThird)
                }
                
                
            }
            .frame(alignment: .center)
        } else if teamSelected == Team.bayernMunich {
            HStack {
                Text("Kits")
                    .font(.headline)
                    .padding()
                VStack {
                    Text("Home")
                        .padding()
                    Image(systemName: "tshirt.fill")
                        .foregroundColor(KitColors.bayernMunichHome)
                }
                
                VStack {
                    Text("Away")
                        .padding()
                    Image(systemName: "tshirt.fill")
                        .foregroundColor(KitColors.bayernMunichAway)
                }
                
                VStack {
                    Text("Third")
                        .padding()
                    Image(systemName: "tshirt.fill")
                        .foregroundColor(KitColors.bayernMunichThird)
                }
                
            }
        } else if teamSelected == Team.liverpoolFC {
            HStack {
                Text("Kits")
                    .font(.headline)
                    .padding()
                VStack {
                    Text("Home")
                        .padding()
                    Image(systemName: "tshirt.fill")
                        .foregroundColor(KitColors.liverpoolHome)
                }
                
                VStack {
                    Text("Away")
                        .padding()
                    Image(systemName: "tshirt.fill")
                        .foregroundColor(KitColors.liverpoolAway)
                }
                
                VStack {
                    Text("Third")
                        .padding()
                    Image(systemName: "tshirt.fill")
                        .foregroundColor(KitColors.liverpoolThird)
                }
                
            }
        } else if teamSelected == Team.pSG {
            HStack {
                Text("Kits")
                    .font(.headline)
                    .padding()
                VStack {
                    Text("Home")
                        .padding()
                    Image(systemName: "tshirt.fill")
                        .foregroundColor(KitColors.psgHome)
                }
                
                VStack {
                    Text("Away")
                        .padding()
                    Image(systemName: "tshirt.fill")
                        .foregroundColor(KitColors.psgAway)
                }
                
                VStack {
                    Text("Third")
                        .padding()
                    Image(systemName: "tshirt.fill")
                        .foregroundColor(KitColors.psgThird)
                }
                
            }
        }
    }
}
