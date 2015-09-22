//
//  PlateUAUtils.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/28/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import UIKit
import XCTest

class PlateUAUtilsTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testBackImage() {
        
        // This is an example of a functional test case.
        
        XCTAssert(PlateUAUtils.backImageNameFor(type: PlateUAConstants.PlateTypes.Auto_04) == "1.1.04", "Wrong background image ref")
    }
    
    func testPlates() {
        
        var plates = PlateUAUtils.plates("AA")
        XCTAssert(count(plates) == 2, "Wrong quantity of plates")
        
        plates = PlateUAUtils.plates("*A")
        XCTAssert(count(plates) == 2, "Wrong quantity of plates")
        
        plates = PlateUAUtils.plates("*A##")
        XCTAssert(count(plates) == 2, "Wrong quantity of plates")
        
        plates = PlateUAUtils.plates("D")
        XCTAssert(count(plates) == 0, "Wrong quantity of plates")
        
        plates = PlateUAUtils.plates("3")
        XCTAssert(count(plates) == 0, "Wrong quantity of plates")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
