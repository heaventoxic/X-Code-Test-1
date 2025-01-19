import Foundation

func myNumber(numberCount: Int) -> UInt8 {
    var userNumber = UInt8(0)
    for _ in 1... {
        print("Попытка №\(numberCount)")
        guard let num = UInt8(readLine() ?? "") else {
            print("Неверные данные")
            continue
        }
        userNumber = num
        break
    }
    return userNumber
}

func chekNumber(_ number: UInt8, _ randomNumber: UInt8) -> Bool {
    if number == randomNumber {
            print("Ты угадал, мошенник")
            return true
    } else if number < randomNumber {
            print("Загаданое число больше")
    } else if number > randomNumber {
            print("Загаданое число меньше")
    }
    return false
}

func inputNewGame() -> String {
    var solution = String("")
    for _ in 1... {
        guard let input = readLine(), !input.isEmpty else {
            print("Некорректный ответ")
            continue
        }
        solution = input
        break
    }
    return solution
}

func outputNewGame(input: String) -> Bool {
    switch input.lowercased() {
    case "да", "yes":
        return true
    case "нет", "no", "not":
        print("Программа завершена")
        return false
    default:
        print("В следующий раз думай чего пишешь")
        print("Программа завершена")
        return false
    }
}
    





