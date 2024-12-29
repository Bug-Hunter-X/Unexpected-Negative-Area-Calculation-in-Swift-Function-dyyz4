func calculateArea(width: Double, height: Double) -> Double {
  return width * height
}

let width = 10.0
let height = 5.0
let area = calculateArea(width: width, height: height)
print(area) // Output: 50.0

// This code works fine, but consider this scenario:
let width2 = 0.0
let height2 = 5.0
let area2 = calculateArea(width: width2, height: height2) // Output 0.0
print(area2) // Output: 0.0

let width3 = -5.0
let height3 = 5.0
let area3 = calculateArea(width: width3, height: height3) // Output -25.0
print(area3) // Output: -25.0

//The issue is that the function does not handle negative values for width and height and it should ideally return an error or handle this situation appropriately. 