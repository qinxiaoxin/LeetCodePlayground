import Foundation

public class GameManager {
    public var score: Int = 0
    public static let defaultGameManager: GameManager = GameManager()
    
    private init() {
        
    }
    
    public func addScore() {
        score += 10
    }
}