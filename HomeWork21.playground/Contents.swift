import UIKit

// 1. Поиск сокровища в лабиринте
let maze: [String: Bool] = [
    "A1": false,
    "A2": true,
    "A3": false,
    "A4": true
]

func exploreMaze() {
    var treasureFound = false
    for (cell, hasTreasure) in maze {
        if hasTreasure {
            print("Сокровище найдено в ячейке \(cell)!")
            treasureFound = true
        }
    }
    
    if !treasureFound {
        print("Сокровища в лабиринте не обнаружены.")
    }
}

exploreMaze()

// 2. Путешествие через пространство
protocol Portal {
    func teleport()
}

struct DimensionPortal: Portal {
    func teleport() {
        print("Вы перенеслись в другое измерение!")
    }
}

struct PlanetPortal: Portal {
    func teleport() {
        print("Вы приземлились на другую планету!")
    }
}

func travelThroughPortal(_ portal: Portal) {
    portal.teleport()
}

let dimensionPortal = DimensionPortal()
let planetPortal = PlanetPortal()

travelThroughPortal(dimensionPortal)
travelThroughPortal(planetPortal)

// 3. Битва с драконом
enum DragonAttackError: Error {
    case failedAttack
}

func attackDragon() throws {
    let success = Int.random(in: 0...1) == 1
    if success {
        print("Дракон повержен!")
    } else {
        throw DragonAttackError.failedAttack
    }
}

do {
    try attackDragon()
} catch {
    print("Атака дракона не удалась...")
}

// 4. Улучшение снаряжения
protocol Weapon {
    func attack()
}

extension Weapon {
    func attack() {
        print("Вы наносите удар!")
    }
}

struct Sword: Weapon {
    func attack() {
        print("Меч вкладывается в атаку!")
    }
}

let basicWeapon: Weapon = Sword()
basicWeapon.attack()

struct Axe: Weapon {
    func attack() {
        print("Топор размахивает в бою!")
    }
}

let upgradedWeapon: Weapon = Axe()
upgradedWeapon.attack()




