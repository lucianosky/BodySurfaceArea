//
//  Math.swift
//  BodySurfaceArea
//
//  Created by Luciano Sclovsky on 12/11/19.
//  Copyright © 2019 Luciano Sclovsky. All rights reserved.
//

import Foundation

class Math {
    
    private static let log_10: Double = log(10)

    static func log10(_ d: Double) -> Double {
        return log(d) / Math.log_10
    }

}
