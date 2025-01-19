import Foundation
var continueGame: Bool = true
let tryCount: Int = 3
repeat {
    let randomNumber = UInt8.random(in: 1...10)
    print("Загадано число от 1 до 5, отгадывай. У тебя \(tryCount) попытки")
    for i in 1...tryCount {
        if chekNumber(myNumber(numberCount: i), randomNumber)
            == true {
            print("Ты победил!")
            break
        }
        if i == 3 { print("ПОТРАЧЕНО") }
    }
    print("Начинаем заново? (да / нет)")
    continueGame = outputNewGame(input: inputNewGame())
} while continueGame == true

