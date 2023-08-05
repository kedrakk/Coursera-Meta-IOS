//: [Previous](@previous)

import Foundation

enum CalculatorError: Error{
    case unableToDivideByZero
}

class Calculator
{
    func divide(x:Double,y:Double) throws ->Double
    {
        if y == 0{
            throw CalculatorError.unableToDivideByZero
        }
        return x/y
    }
}

let calculator = Calculator()
do{
    defer{
        print("Hello World")
    }
    let successResult = try calculator.divide(x:8.0,y:3.0)
    print("\(successResult)")
}
catch CalculatorError.unableToDivideByZero{
    print("Division by zero detected and not allowed")
}


