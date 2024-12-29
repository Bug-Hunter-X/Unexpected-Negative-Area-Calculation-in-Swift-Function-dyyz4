# Unexpected Negative Area Calculation in Swift Function

This repository demonstrates a common error in Swift:  a function that calculates area does not handle negative input values correctly.  The `calculateArea` function returns a negative area when given negative width or height, which is not mathematically sound for area calculations.  The solution involves adding input validation to handle such cases. 

## Bug
The original `calculateArea` function simply multiplies width and height, leading to incorrect results for negative inputs.

## Solution
The improved `calculateArea` function in `bugSolution.swift` includes error handling. It returns an error if width or height is negative.  This ensures the function behaves correctly in all situations. 