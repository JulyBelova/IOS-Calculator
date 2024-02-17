//
//  CalcControllerViewModel.swift
//  IOS Calculator App
//
//  Created by July Belova on 17.02.2024.
//

import Foundation

class CalcControllerViewModel {
    
    //MARK: - TableView DataSourse Array
    let calcButtonCells: [CalculatorButton] = [
        .allClean, .plusMinus, .percentage, .divide,
        .number(7), .number(8), .number(9), .multiply,
        .number(4), .number(5), .number(6), .subtract,
        .number(1), .number(2), .number(3), .add,
        .number(0), .decimal, .equals
    ]
    private(set) lazy var calcHeaderLabel: String = "42"
}
