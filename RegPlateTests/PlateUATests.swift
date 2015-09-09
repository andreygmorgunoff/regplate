//
//  PlateUATests.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/20/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import UIKit
import XCTest

class PlateUATests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testRegExp() {
        
        let regexp : String? = PlateUA.regexp()
        
        // This is an example of a functional test case.
        XCTAssert(regexp == nil, "RegExp isn't empty")
    }

    func testMatch() {
        
        let plate = PlateUA(input: "AA1234EE")

        let result = plate.match("AA1234EE")
        
        // This is an example of a functional test case.
        XCTAssert(!result, "Match is succesfull")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
