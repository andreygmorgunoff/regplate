//
//  PlateUAConstants.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/28/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation
import XCTest

class PlateUAConstantsTests: XCTestCase {
    
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
    
    func testPlateType() {
        
        let plateType = PlateUAConstants.PlateTypes()
        
        XCTAssert(plateType == PlateUAConstants.PlateTypes.Unknown, "PlateType is wrong after initialization")

        let autoPlateType04_1 = PlateUAConstants.PlateTypes.Auto_04
        
        XCTAssert(autoPlateType04_1.rawValue == "1.1.04", "PlateType raw value is wrong after initialization")
    }
    
    func testKyivPlateRegion() {
        
        if let plateRegion = PlateUAConstants.PlateRegions(rawValue: "AA")
        {
            XCTAssert(plateRegion == PlateUAConstants.PlateRegions.AA, "PlateType is wrong after initialization")
            
            if let region = plateRegion.region
            {
                XCTAssert(region == "Kyiv", "PlateRegion has wrong region assigned")
            }
            else
            {
                XCTAssert(true, "PlateRegion hasn't region assigned")
            }
            
            if let year = plateRegion.year
            {
                XCTAssert(year == 2004, "PlateRegion has wrong year assigned")
            }
            else
            {
                XCTAssert(true, "PlateRegion hasn't year assigned")
            }
        }
        else
        {
            XCTAssert(true, "PlateRegion creating failed")
        }
        
        
    }
    
    func testVinnitsaPlateRegion() {
        
        if let plateRegion = PlateUAConstants.PlateRegions(rawValue: "KB")
        {
            XCTAssert(plateRegion == PlateUAConstants.PlateRegions.KB, "PlateType is wrong after initialization")
            
            if let region = plateRegion.region
            {
                XCTAssert(region == "Vinnitska", "PlateRegion has wrong region assigned")
            }
            else
            {
                XCTAssert(true, "PlateRegion hasn't region assigned")
            }
            
            if let year = plateRegion.year
            {
                XCTAssert(year == 2013, "PlateRegion has wrong year assigned")
            }
            else
            {
                XCTAssert(true, "PlateRegion hasn't year assigned")
            }
        }
        else
        {
            XCTAssert(true, "PlateRegion creating failed")
        }
        
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}