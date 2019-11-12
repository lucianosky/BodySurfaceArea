//
//  BodySurfaceAreaCalculator.swift
//  BodySurfaceArea
//
//  Created by Luciano Sclovsky on 12/11/19.
//  Copyright © 2019 Luciano Sclovsky. All rights reserved.
//

// source:
// http://www.medcalc.com/body.html
    
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
        let result = 0.20247 * pow(height, 0.725) * pow(weight, 0.425)
        return result
    }

    func haycock(height: Double, weight: Double) -> Double {
        let heightCm = height * 100
        let result =  0.024265 * pow(heightCm, 0.3964) * pow(weight, 0.5378)
        return result
    }

    func mosteller(height: Double, weight: Double) -> Double {
        let heightCm = height * 100
        let result = sqrt((heightCm * weight) / 3600)
        return result
    }

}
