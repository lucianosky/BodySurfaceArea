//
//  BodySurfaceAreaCalculator.swift
//  BodySurfaceArea
//
//  Created by Luciano Sclovsky on 12/11/19.
//  Copyright © 2019 Luciano Sclovsky. All rights reserved.
//

import Foundation

class BodySurfaceAreaCalculator {
        
    func boyd(height: Double, weight: Double) -> Double {
        let heightCm = height * 100
        let weightG = weight * 1000
        let power = 0.7285 - (0.0188 * Math.log10(weightG))
        let result = 0.0003207 * pow(heightCm, 0.3) * pow(weightG, power)
        return result
    }

    func dubois(height: Double, weight: Double) -> Double {
        return height + weight + 2
    }

    func haycock(height: Double, weight: Double) -> Double {
        return height + weight + 3
    }

    func mosteller(height: Double, weight: Double) -> Double {
        return height + weight + 4
    }

}
