//: Playground - noun: a place where people can play

import UIKit

protocol TurnBasedGame {
    var turn: Int{ set get }
    func play()
}

protocol TurnBasedGameDelegate {
    func gameStart()
    func playerMove()
    func gameEnd()
    
    func gameOver() -> Bool
}

class SinglePlayerTurnBasedGame: TurnBasedGame {
    var turn: Int = 0
    var delegate: TurnBasedGameDelegate!
    
    func play() {
        delegate.gameStart()
        while !delegate.gameOver() {
            print("ROUND: ", turn, ":")
            delegate.playerMove()
            turn += 1
        }
        delegate.gameEnd()
    }
}

class RollNumberGame: SinglePlayerTurnBasedGame, TurnBasedGameDelegate {
    
    var score: Int = 0
    
    override init() {
        super.init()
        delegate = self
    }
    
    func gameStart() {
        score = 0
        turn = 0
        
        print("Welcom to Roll Number Game.")
        print("Try to use least turn to make total 100 scores!")
        
    }
    
    func gameOver() -> Bool {
        return score >= 100
    }
    
    func playerMove() {
        let rollNumber: Int = Int(arc4random() % 6)
        score += rollNumber
        print("You rolled a", rollNumber, "! The score is", score, "now!")
    }
    
    func gameEnd() {
        print("Congratulations! You win the game in", turn, "ROUND!")
    }
    
}

//let rollNumberGame = RollNumberGame()
//rollNumberGame.play()


class RockScissorsPaper: SinglePlayerTurnBasedGame, TurnBasedGameDelegate {
    
    enum Shape: Int, CustomStringConvertible {
        case Rock
        case Scissors
        case Paper
        
        func beat(shape: Shape) -> Bool {
           return (self.rawValue + 1) % 3 == shape.rawValue
        }
        
        var description: String {
            switch self {
            case .Rock:
                return "Rock"
            case .Scissors:
                return "Scissors"
            case .Paper:
                return "Paper"
            }
        }
        
    }
    
    var wins: Int = 0
    var otherWins: Int = 0
    
    override init() {
        super.init()
        delegate = self
    }
    
    static func go() -> Shape {
        return Shape(rawValue: Int(arc4random() % 3))!
    }

    func gameEnd() {
        if wins >= 2 {
            print("Your win !!!")
        } else if otherWins >= 2 {
            print("Your lose...")
        }
    }

    func playerMove() {
        let yourShape: Shape = RockScissorsPaper.go()
        let otherShape: Shape = RockScissorsPaper.go()
        
        print("Your shape is: ",yourShape)
        print("Other shape is: ",otherShape)
        
        if yourShape.beat(shape: otherShape) {
            print("You win this round")
            wins += 1
        } else if otherShape.beat(shape: yourShape) {
            print("You lose this round")
            otherWins += 1
        } else {
            print("Tied in the round")
        }
    }

    func gameStart() {
        wins = 0
        otherWins = 0
        print("== Rock Scissors Paper ==")
    }

    func gameOver() -> Bool {
        return wins >= 2 || otherWins >= 2
    }
    
}

let rockScissorsPaper = RockScissorsPaper()
rockScissorsPaper.play()




