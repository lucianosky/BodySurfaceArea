//
//  BodySurfaceAreaTests.swift
//  BodySurfaceAreaTests
//
//  Created by Luciano Sclovsky on 12/11/19.
//  Copyright © 2019 Luciano Sclovsky. All rights reserved.
//

import XCTest
@testable import BodySurfaceArea

class BodySurfaceAreaTests: XCTestCase {
    
    var calculator: BodySurfaceAreaCalculator!

    override func setUp() {
        super.setUp()
        calculator = BodySurfaceAreaCalculator()
    }

    override func tearDown() {
    }

    func test() {
        let height = 1.8
        let weight = 90.0
        let boyd = calculator.boyd(height: height, weight: weight)
        let dubois = calculator.dubois(height: height, weight: weight)
        let haycock = calculator.haycock(height: height, weight: weight)
        let mosteller = calculator.mosteller(height: height, weight: weight)
        XCTAssertEqual(boyd, 2.1399785752020155)
        XCTAssertEqual(dubois, 2.0988737479966493)
        XCTAssertEqual(haycock, 2.137774725824688)
        XCTAssertEqual(mosteller, 2.1213203435596424)
    }


}
