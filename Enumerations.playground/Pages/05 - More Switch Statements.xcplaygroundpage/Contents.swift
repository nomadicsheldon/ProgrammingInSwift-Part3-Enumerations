//: [Episode 04: Switch Statements](@previous)
//: ## Episode 05: More Switch Statements

//: Switching on values

/*
 func getDescription(for number: Int) -> String {
 switch number {
 default:
 return "No description"
 }
 }
 
 getDescription(for: 15)
 
 */

func getDescription(for number: Int) -> String {
    switch number {
    case 0:
        return "Zero"
    // defining range
    case 1...9:
        return "Between 1 and 9"
    // value binding, nice 🥳
    case let negativeNumber where negativeNumber < 0:
        return "Negative"
    // out binding
    case _ where number > .max / 2:
        return "very large"
    default:
        return "No description"
    }
}

getDescription(for: 0)
getDescription(for: 4)
getDescription(for: 15)
getDescription(for: -1)
getDescription(for: Int.max)

//: Switching on expressions

let number = Int.max
let numberIsEven: Bool

switch number % 2 {
case 0:
     numberIsEven = true
default:
    numberIsEven = false
}

//: Switching on multiple values

func pointCategory(for coordinates: (Double, Double)) -> String {
    switch coordinates {
    case (0, 0):
        return "origin"
    // value binding for x axis
    case (let x, 0):
        return "On the x-axis at \(x)"
    // value binding for y axis
    case (0, let y):
        return "On the y-axis at \(y)"
    // out binding for all
    case _ where coordinates.0/2 == coordinates.1:
    return "Along y == x/2"
    // out binding for x axis, value binding for y axis, where for checking condition
    case (_, let y) where coordinates.0 == y:
        return "Along y == x"
    // value binding for x axis, value binding for y axis, where for checking condition
    case let (x, y) where y == x * x:
        return "Along y = x^2"
    // out binding for x axis, value binding for y axis
    case (let x, let y):
        return "No zero coordinates. x = \(x), y= \(y)"
//    default:
//        return "No category"
    }
}

/*
func pointCategory(for coordinates: (Double, Double)) -> String {
    switch coordinates {
    case (0, 0):
        return "origin"
    case (let x, let y):
        return "No zero coordinates. x = \(x), y= \(y)"
    case (let x, 0):
        return "On the x-axis at \(x)"
    case (0, let y):
        return "On the y-axis at \(y)"
//    default:
//        return "No category"
    }
}
 */

pointCategory(for: (0, 0))
pointCategory(for: (12, 0))
pointCategory(for: (0, 12))
pointCategory(for: (12, 12))
pointCategory(for: (4, 2))
pointCategory(for: (2, 4))

//: [Episode 06: Challenge - Switch Statements](@next)
