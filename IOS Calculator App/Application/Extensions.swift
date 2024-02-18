//
//  Extensions.swift
//  IOS Calculator App
//
//  Created by July Belova on 18.02.2024.
//

import Foundation

extension Double {
    var toInt: Int? {
        return Int(self)
    }
}

extension String {
    var toDouble: Double? {
        return Double(self)
    }
}

extension FloatingPoint {
    var isInteger: Bool {
        return rounded() == self
    }
}
