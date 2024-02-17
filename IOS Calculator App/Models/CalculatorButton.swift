//
//  CalculatorButton.swift
//  IOS Calculator App
//
//  Created by July Belova on 17.02.2024.
//

import UIKit

enum CalculatorButton {
    case allClean
    case plusMinus
    case percentage
    case divide
    case multiply
    case subtract
    case add
    case equals
    case number(Int)
    case decimal
    
    init(calcButton: CalculatorButton) {
        
        switch calcButton {
        case .allClean, .plusMinus, .percentage, .divide, .multiply, .subtract, .add, .equals, .decimal:
            self = calcButton
        case .number(let int):
            if int.description.count == 1 {
                self = calcButton
            } else {
                fatalError("CalculatorButton.number Int was not 1 digit during init")
            }
        }
    }
}

extension CalculatorButton {
    
    var title: String {
        switch self {
        case .allClean:
            return "AC"
        case .plusMinus:
            return "+/-"
        case .percentage:
            return "%"
        case .divide:
            return "÷"
        case .multiply:
            return "x"
        case .subtract:
            return "-"
        case .add:
            return "+"
        case .equals:
            return "="
        case .number(let int):
            return int.description
        case .decimal:
            return ","
        }
    }
    
    var color: UIColor {
        switch self {
        case .allClean, .plusMinus, .percentage:
            return .lightGray
        case .divide, .multiply, .subtract, .add, .equals:
            return .systemOrange
        case .number, .decimal:
            return .darkGray
        }
    }
    
    var selectedColor: UIColor? {
        switch self {
        case .allClean, .plusMinus, .percentage, .equals, .number, .decimal:
            return nil
        case .divide, .multiply, .subtract, .add:
            return .white
        }
    }
}
