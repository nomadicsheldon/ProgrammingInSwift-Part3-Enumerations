//: [Episode 06: Challenge - Switch Statements](@previous)
//: ## Episode 07: Associated Values

// Defining associated values
enum TwoDimensionalPoint {
    case origin
    // Defining associated values
    case onXAxis(Double)
    // Defining associated values
    case onYAxis(Double)
    // Defining associated values
    case noZeroCoordinates(x: Double, y: Double)
}

let coordinates = (0.0, 3.0)
let twoDimensionalPoint: TwoDimensionalPoint

switch coordinates {
// case for (0,0)
case (0, 0):
    twoDimensionalPoint = .origin
// case for - if x have some value but y is 0
case (let x, 0):
    twoDimensionalPoint = .onXAxis(x)
    
// case for - if y have some value but x is 0
case (0, _):
    twoDimensionalPoint = .onYAxis(coordinates.1)

// now you know what case 😎
default:
    twoDimensionalPoint = .noZeroCoordinates(x: coordinates.0, y: coordinates.1)
}

// funtion for checking where our point lies -
func getValues(for point: TwoDimensionalPoint) -> (x: Double, y: Double) {
    switch point {
    // simple case
    case .origin:
        return (0, 0)
    // case with one double value
    case let .onXAxis(x):
        return (x, 0)
    // case with one double value
    case .onYAxis(let y):
        return (0, y)
    // case with two double value
    case let .noZeroCoordinates(x, y):
        return (x, y)
    }
}

getValues(for: .origin)
getValues(for: .onXAxis(19))
getValues(for: .onYAxis(20))
getValues(for: .noZeroCoordinates(x: 19, y: 12))

//: ## End
