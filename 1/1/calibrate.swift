func calibrate(array: [String]) -> Int {
    var results = [Int]()

    for element in array {
        var numbers = [Int]()

        for character in element {
            if character.isNumber {
                numbers.append(Int(String(character))!)
            }
        }

        if numbers.count > 0 {
            let result = "\(numbers.first!)\(numbers.last!)"
            results.append(Int(String(result))!)
        }
    }

    return results.reduce(0, +)
}
