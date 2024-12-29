enum AreaError: Error {
    case invalidInput
}

func calculateArea(width: Double, height: Double) throws -> Double {
    guard width >= 0, height >= 0 else {
        throw AreaError.invalidInput
    }
    return width * height
}

let width = 10.0
let height = 5.0

// Success case
do {
    let area = try calculateArea(width: width, height: height)
    print(area) // Output: 50.0
} catch {
    print("Error: "
          + error.localizedDescription)
}

let width2 = -5.0
let height2 = 5.0

// Error handling
do {
    let area = try calculateArea(width: width2, height: height2)
    print(area) 
} catch {
    print("Error: "
          + error.localizedDescription) // Output: Error: invalidInput
}

//Error Handling using Result Type
func calculateArea2(width: Double, height: Double) -> Result<Double, AreaError> {
    guard width >= 0, height >= 0 else { return .failure(.invalidInput)}
    return .success(width * height)
}

let result = calculateArea2(width: -5.0, height: 5.0)

switch result {
case .success(let area):
    print("Area: ", area)
case .failure(let error):
    print("Error: ", error)
}