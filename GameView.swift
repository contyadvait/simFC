import SwiftUI

struct GameView: View {
    var body: some View {
        VStack {
            Section("Matchday") {
                ZStack {
                    Image("footballField")
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(7)
                        .padding()
                    VStack(spacing: 30) {
                        // Home
                        VStack(spacing: 45) {
                            Circle()
                                .frame(width: 20)
                                .foregroundColor(KitColors.manCityThird)
                            
                            HStack(spacing: 120) {
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.manCityHome)
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.manCityHome)
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.manCityHome)
                            }
                            HStack(spacing: 120) {
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.manCityHome)
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.manCityHome)
                            }
                            HStack(spacing: 75) {
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.manCityHome)
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.manCityHome)
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.manCityHome)
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.manCityHome)
                                
                            }
                            HStack(spacing: 110) {
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.manCityHome)
                            }
                        }
                        
                        // Away
                        VStack(spacing: 45) {
                            HStack(spacing: 110) {
                                
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.liverpoolHome)
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.liverpoolHome)
                            }
                            Circle()
                                .frame(width: 20)
                                .foregroundColor(KitColors.liverpoolHome)
                            
                            HStack(spacing: 110) {
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.liverpoolHome)
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.liverpoolHome)
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.liverpoolHome)
                                
                            }
                            
                            
                            HStack(spacing: 90) {
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.liverpoolHome)
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.liverpoolHome)
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.liverpoolHome)
                                Circle()
                                    .frame(width: 20)
                                    .foregroundColor(KitColors.liverpoolHome)
                                
                            }
                            Circle()
                                .frame(width: 20)
                                .foregroundColor(KitColors.liverpoolThird)
                            
                        }
                    }
                }
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
