import SwiftUI

struct Club {
    var name: String
    var players: [Player]
    var homeKitColor: [Double]
    var awayKitColor: [Double]
    var hasThirdKit: Bool
    var thirdKitColor: [Double]
    var league: String
    var currentPositionInLeague: Int
    var captainOrder: [Player]
    var manager: Manager
    
    func getPlayers() -> [Player] {
        return players
    }
    
    func getThirdKit() -> [Double] {
        if hasThirdKit == false {
            return [0,0,0]
        } else {
            return thirdKitColor
        }
    }
    
    func europeanFootballLeague() -> String {
        if league == "EPL" || league == "Bundesliga" || league == "Ligue 1 Uber Eats" || league == "Serie A" || league == "LaLiga" {
            if currentPositionInLeague <= 4 {
                return "UEFA Champions League"
            } else if currentPositionInLeague <= 6 {
                return "UEFA Europa League"
            } else if currentPositionInLeague == 7 {
                return "UEFA Europa Conference League"
            } else {
                return "No European Football"
            }
        }
        return "Not in Top 5 Leagues"
    }
}

var manCity = Club(name: "Manchester City FC",
                   players: [haaland, deBruyne, rubenDias, ederson],
                   homeKitColor: [115, 195, 232],
                   awayKitColor: [47, 39, 46],
                   hasThirdKit: true,
                   thirdKitColor: [186, 222, 114],
                   league: "EPL",
                   currentPositionInLeague: 1,
                   captainOrder: [rubenDias, deBruyne, haaland],
                   manager: pepGuardiola)

var bayernMunich = Club(name: "FC Bayern Munich",
                        players: [jamalMusiala],
                        homeKitColor: [234, 79, 61],
                        awayKitColor: [233, 234, 239],
                        hasThirdKit: true,
                        thirdKitColor: [125,138,163],
                        league: "Bundesliga",
                        currentPositionInLeague: 2,
                        captainOrder: [jamalMusiala],
                        manager: pepGuardiola)
