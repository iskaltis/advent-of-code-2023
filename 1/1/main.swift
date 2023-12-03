import Foundation

let arguments = CommandLine.arguments

if arguments.count > 2 {

    if arguments[1] == "--test" {
        let inputString = arguments[2]
        let inputNumber = Int(arguments[3])
        
        let result = test(calibrate, inputValue: [inputString], expectedOutput: inputNumber)
        print(arguments[1], arguments[2], arguments[3], result)
    }

    if arguments[1] == "--calibrate" {
        let filename = arguments[2]

        do {
            let fileContents = try String(contentsOfFile: filename, encoding: .utf8)
            let lines = fileContents.components(separatedBy: .newlines)
            let nonEmptyLines = lines.filter { !$0.isEmpty }
            let result = calibrate(array: nonEmptyLines)
            print(arguments[1], arguments[2], result)
        } catch {
            print("Error reading file: \(error)")
            exit(1)
        }
    }
    
}