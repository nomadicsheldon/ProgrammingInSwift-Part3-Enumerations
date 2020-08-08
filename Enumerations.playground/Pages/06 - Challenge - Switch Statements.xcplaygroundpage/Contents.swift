//: [Episode 05: More Switch Statements](@previous)
//: ## Episode 06: Challenge - Switch Statements

/*:
 ## Challenge 1
 - Write a switch statement that switches on a tuple containing a `String` and an `Int`. The `String` is a name, and the `Int` is an age.
 - Use the cases below (or make up your own), and binding with `let` syntax, to assign the the name, followed by the life stage related to the age, to a `String` constant.
 
 For example, for the author of these challenges, you'd assign "Matt is an adult." to your constant.
 
 * 0-2 years: Infant
 * 3-12 years: Child
 * 13-19 years: Teenager
 * 20-39: Adult
 * 40-60: Middle aged
 * 61+: Elderly
 */

// TODO: Write solution here
let lifeStage: String

switch ("Himanshu", 7) {
case let(name, 0...2):
    lifeStage = "\(name) is infant"
case let(name, 3...12):
    lifeStage = "\(name) is child"
case let(name, 12...19):
    lifeStage = "\(name) is Teenager"
case let(name, 19...39):
    lifeStage = "\(name) is Adult"
case let(name, 39...60):
    lifeStage = "\(name) is Middle aged"
case let(name, 61...):
    lifeStage = "\(name) is Elderly"
case let(_, age):
    lifeStage = "Unaccountable for age: \(age)"
}



/*:
 ## Challenge 2
 Imagine starting a new level in a video game. The character makes a series of movements in the game. Calculate the position of the character on a top-down level map after making a set of movements.
 - Create a `Direction` enumeration with cases for `north`, `south`, `east`, and `west`.
 - Write a function that takes a `Direction` array and returns a tuple of two Ints representing the character's location after all of the movements.
 - Assume the character starts at (0, 0)
 
 Example: A series of movements like [.north, .west, .west] would return a location of (-2, 1)
 */

// TODO: Write solution here

enum Direction {
    case north, south, east, west
}

let steps: [Direction] = [.north, .west, .west]

func currentLocationOfAvatar(for steps: [Direction]) -> (x: Int, y: Int) {
    //    var currentPoint = (x: 0, y: 0)
    //    for step in steps {
    //        switch step {
    //        case .north:
    //            currentPoint.y += 1
    //        case .south:
    //            currentPoint.y -= 1
    //        case .east:
    //            currentPoint.x += 1
    //        case .west:
    //            currentPoint.x -= 1
    //        }
    //    }
    //    return currentPoint
    steps.reduce(into: (x: 0, y: 0)) { (result, step) in
        switch step {
        case .north:
            result.y += 1
        case .south:
            result.y -= 1
        case .east:
            result.x += 1
        case .west:
            result.x -= 1
        }
    }
}

currentLocationOfAvatar(for: steps)



//: [Episode 07: Associated Values](@next)
