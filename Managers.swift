struct Manager {
    var name: String
    var initals: String
    var shirt: String
    var pants: String
    var shoes: String
    var footballType: String
    var buildupPace: Double
    var strictness: Double
    
    func tacticsExplaination() -> String {
        if footballType == "TikiTaka" {
            return "High passing game with high utilization of wingers"
        } else if footballType.hasPrefix("Pass to") {
            return "A simple yet powerful tactics involving everyone passing to a certain player"
        }
        return "Explaination Not Available"
    }
}

var pepGuardiola = Manager(name: "Pep Guardiola", initals: "PG", shirt: "Long sleeve sweater", pants: "Long black pants", shoes: "Sport shoes", footballType: "TikiTaka", buildupPace: 0.7, strictness: 0.9)
