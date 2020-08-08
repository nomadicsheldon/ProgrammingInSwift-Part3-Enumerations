//: ## Episode 02: Enumerations
/*
 // Basic implementation of enum
 enum Month {
     case january
     case february
 }
 */

/*
 we can write in same line as well
 enum Month {
     case january, february, march, april, may, june, july, august, september, october, november, december
 }
 */

// accessing enum
//let month = Month.october

// accessing enum and typecasting
//let month: Month = Month.october

// typecasting is there so no need to specify Month while accessing
//let month: Month = .october

// setting rawValue to 1, swift will automatically set remaining values in increasing order
enum Month: Int {
    case january = 1, february, march, april, may, june, july, august, september, october, november, december
}

// accessing enum
let month: Month = .october

// accessing raw value of enum case
print(month.rawValue)

// using it in a function
func monthUntillJingleBells(from month: Month) -> Int {
    Month.december.rawValue -  month.rawValue
}

monthUntillJingleBells(from: .august)

// We can access case from rawValue like this also but it will return optional, because it's possible that you can't have value for that rawValue (for example: 13)
let rawMonth = Month(rawValue: 3)


// we can add documentation for enums, cool na.. 😎
enum Season: String, CaseIterable {
    ///⛄️ winter is here, wear your jacket and make snowman.
    case winter
    ///🌸 spring is here, enjoy the rain
    case spring
    ///🌞 summer is here, i hate this weather 😡
    case summer
    ///🍂 autumn is here, roads are covered by leaves.
    case autumn
}

Season.winter

Season.winter.rawValue

// you can get all cases but for this you need to use CaseIterable protocol
Season.allCases

// then do whatever you want
Season.allCases.filter {
    $0.rawValue > "b"
}
//: [Episode 03: Challenge - Enumerations](@next)
