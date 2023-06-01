import Foundation

struct Player: Identifiable {
    var id = UUID()
    var name: String
    var number: Int
    var postition: [String]
    var powerShot: Bool
    var longshots: Int
    var starter: Bool
    
    // Main Attributes
    var shooting: Int
    var dribbling: Int
    var ballControl: Int
    var pace: Int
    
    // Defending Attributes
    var defending: Int
    var slideTackles: Int
    var clearancePower: Int
    var stamina: Int
    var strength: Int
    var jumping: Int
    
    // Accuracy Attributes
    var passing: Int
    var finishing: Int
    var headingAccuracy: Int
    var makeMistakesUnderStress: Bool
    
    // Goalkeeping Attributes
    var reflexes: Int
    var positioning: Int
    var distribution: Int
    var strongHands: Bool
    var handling: Int
    var kicking: Int
    
    // Extra Attributes
    var playerCharacters: [String]
    var basedOnCard: String
    
    func getPlayerName() -> String {
        return "\(name), Main Position: \(postition[0])"
    }
}

var haaland = Player(name: "Eerling Haaland", number: 9, postition: ["ST", "CF"], powerShot: true, longshots: 93, starter: true, shooting: 97, dribbling: 90, ballControl: 92, pace: 97, defending: 61, slideTackles: 36, clearancePower: 67, stamina: 89, strength: 99, jumping: 82, passing: 82, finishing: 99, headingAccuracy: 98, makeMistakesUnderStress: false, reflexes: 15, positioning: 9, distribution: 33, strongHands: true, handling: 47, kicking: 72, playerCharacters: ["Power Header", "Speed Dribbler", "Injury Prone"], basedOnCard: "PL TOTS")

var deBruyne = Player(name: "Kevin De Bruyne", number: 17, postition: ["CM", "CAM"], powerShot: true, longshots: 95, starter: true, shooting: 92, dribbling: 95, ballControl: 98, pace: 84, defending: 85, slideTackles: 70, clearancePower: 99, stamina: 99, strength: 84, jumping: 71, passing: 99, finishing: 89, headingAccuracy: 73, makeMistakesUnderStress: false, reflexes: 27, positioning: 54, distribution: 21, strongHands: true, handling: 87, kicking: 99, playerCharacters: ["Outside Foot Shot", "Playmaker", "Long Shot Taker", "Long Passer", "Early Crosser", "Leadership", "Injury Prone"], basedOnCard: "PL TOTS")

var rubenDias = Player(name: "Ruben Dias", number: 3, postition: ["CB"], powerShot: false, longshots: 32, starter: true, shooting: 48, dribbling: 83, ballControl: 90, pace: 88, defending: 97, slideTackles: 94, clearancePower: 91, stamina: 92, strength: 99, jumping: 87, passing: 83, finishing: 36, headingAccuracy: 96, makeMistakesUnderStress: false, reflexes: 13, positioning: 24, distribution: 45, strongHands: false, handling: 51, kicking: 23, playerCharacters: ["Power Header", "Leadership", "Solid Player"], basedOnCard: "PL TOTS")

var ederson = Player(name: "Ederson", number: 31, postition: ["GK"], powerShot: false, longshots: 18, starter: true, shooting: 84, dribbling: 99, ballControl: 40, pace: 89, defending: 67, slideTackles: 8, clearancePower: 99, stamina: 41, strength: 71, jumping: 66, passing: 95, finishing: 14, headingAccuracy: 14, makeMistakesUnderStress: false, reflexes: 99, positioning: 91, distribution: 84, strongHands: true, handling: 84, kicking: 95, playerCharacters: ["Comes For Crosses", "Rushes Out Of Goal", "Flair Passes", "Swerve Pass", "Long Passes", "Flair", "Finesse Shot"], basedOnCard: "FUT Ballers")

var jamalMusiala = Player(name: "Jamal Musiala", number: 42, postition: ["CAM", "CM", "LM"], powerShot: true, longshots: 88, starter: true, shooting: 88, dribbling: 99, ballControl: 97, pace: 94, defending: 81, slideTackles: 88, clearancePower: 97, stamina: 99, strength: 81, jumping: 80, passing: 92, finishing: 92, headingAccuracy: 65, makeMistakesUnderStress: false, reflexes: 10, positioning: 1, distribution: 0, strongHands: false, handling: 1, kicking: 53, playerCharacters: ["Technical Dribbler", "Flair Passes", "Outside Foot Shot", "Flair", "Finesse Shot"], basedOnCard: "Bundesliga TOTS")

