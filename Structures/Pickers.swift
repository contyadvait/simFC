
enum Team: String, CaseIterable, Identifiable {
    case manchesterCity, liverpoolFC, realMadridCF, barcelonaFC, marseile, pSG, bayernMunich
    var id: Self { self }
}

enum Manage: String, CaseIterable, Identifiable {
    case jurgenKloop, pepGuardiola, xaviHernandez, carloAncelloti
    var id: Self { self }
}
