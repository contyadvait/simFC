import SwiftUI

struct KitView: View {
    @Binding var teamSelected: Team
    var body: some View {
        if teamSelected == Team.manchesterCity {
            Label {
                Text("Home")
            } icon: {
                Image(systemName: "tshirt.fill")
                    .foregroundColor(KitColors.manCityHome)
            }
            
            Label {
                Text("Away")
            } icon: {
                Image(systemName: "tshirt.fill")
                    .foregroundColor(KitColors.manCityAway)
            }
            
            Label {
                Text("Third")
            } icon: {
                Image(systemName: "tshirt.fill")
                    .foregroundColor(KitColors.manCityThird)
            }
        } else if teamSelected == Team.bayernMunich {
            Label {
                Text("Home")
            } icon: {
                Image(systemName: "tshirt.fill")
                    .foregroundColor(KitColors.bayernMunichHome)
            }
            
            Label {
                Text("Away")
            } icon: {
                Image(systemName: "tshirt.fill")
                    .foregroundColor(KitColors.bayernMunichAway)
            }
            
            Label {
                Text("Third")
            } icon: {
                Image(systemName: "tshirt.fill")
                    .foregroundColor(KitColors.bayernMunichThird)
            }
        } else if teamSelected == Team.liverpoolFC {
            Label {
                Text("Home")
            } icon: {
                Image(systemName: "tshirt.fill")
                    .foregroundColor(KitColors.liverpoolHome)
            }
            
            Label {
                Text("Away")
            } icon: {
                Image(systemName: "tshirt.fill")
                    .foregroundColor(KitColors.liverpoolAway)
            }
            
            Label {
                Text("Third")
            } icon: {
                Image(systemName: "tshirt.fill")
                    .foregroundColor(KitColors.liverpoolThird)
            }
        } else if teamSelected == Team.pSG {
            Label {
                Text("Home")
            } icon: {
                Image(systemName: "tshirt.fill")
                    .foregroundColor(KitColors.psgHome)
            }
            
            Label {
                Text("Away")
            } icon: {
                Image(systemName: "tshirt.fill")
                    .foregroundColor(KitColors.psgAway)
            }
            
            Label {
                Text("Third")
            } icon: {
                Image(systemName: "tshirt.fill")
                    .foregroundColor(KitColors.psgThird)
            }
        }
    }
}
