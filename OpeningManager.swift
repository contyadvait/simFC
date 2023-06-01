import Foundation

final class GameOpener: ObservableObject {
    enum Action {
        case na
        case open
    }
    
    @Published private(set) var action: Action = .na
    func present() {
        guard !action.isPresented else { return }
        self.action = .open
    }
}

extension GameOpener.Action {
    var isPresented: Bool { self == .open }
}
