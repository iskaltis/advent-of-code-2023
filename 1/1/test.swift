func test<Input, Output: Equatable>(_ function: (Input) -> Output, inputValue: Input, expectedOutput: Output) -> (actualOutput: Output, isEqual: Bool) {
    let actualOutput = function(inputValue)
    let isEqual = actualOutput == expectedOutput
    return (actualOutput, isEqual)
}
