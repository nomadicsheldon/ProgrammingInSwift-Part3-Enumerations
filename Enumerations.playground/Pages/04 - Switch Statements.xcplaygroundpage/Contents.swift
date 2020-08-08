//: [Episode 03: Challenge - Enumerations](@previous)
//: ## Episode 04: Switch Statements

enum Month: Int {
    case january = 1, february, march, april, may, june, july, august, september, october, november, december
}

enum Season: String, CaseIterable {
    /// ☃️
    case winter
    /// 🌸
    case spring
    /// 😎
    case summer
    /// 🍂
    case autumn
}

// --------------------------------------

// It's very inconvenient to write in if else
//func getSeason(for month: Month) -> Season {
//    if month == .december || month == .january || month == .february {
//        return .winter
//    }
//}

// Switch is solution for it 🤩

func getSeason(for month: Month) -> Season {
    switch month {
    case .december, .january, .february:
        // body
        return .winter
        //
    
    case .march, .april, .may:
        return .winter
    case .june, .july, .august:
        return .spring
    case .september, .october, .november:
        return .autumn
    }
}

// funtion only
getSeason(for: .august)

//: [Episode 05: More Switch Statements](@next)
