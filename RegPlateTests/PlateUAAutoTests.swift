//
//  PlateUAType1Tests.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/20/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import UIKit
import XCTest

class PlateUAAutoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testRegExp() {
        
        let regexp : String? = PlateUAAuto04.regexp()
        
        // This is an example of a functional test case.
        XCTAssert(regexp != nil, "RegExp is nil")
        XCTAssert(regexp!.isEmpty == false, "RegExp is empty")
    }

    func check(plateType : PlateUAProtocol.Type, input : String, placeholder : String, condition : Bool)
    {
//        let plate : PlateUAProtocol = plateType.init(input: input)
//        
//        var result : String? = plate.value
//        
//        if (condition)
//        {
//            XCTAssert(result != nil, "Match is unsuccesfull")
//            XCTAssert(result! == placeholder, "Match is unsuccesfull")
//        }
//        else
//        {
//            XCTAssert(result == nil, "Match is unsuccesfull")
//        }
    }
    
    func testAutoMatch(objectType : PlateUAProtocol.Type)
    {
//        check(objectType, input: "AA1234EE", placeholder: "AA1234EE", condition: true)
//        check(objectType, input: "A", placeholder: "A*####**", condition: true)
//        check(objectType, input: "A*", placeholder: "A*####**", condition: true)
//        check(objectType, input: "A*1", placeholder: "A*1###**", condition: true)
//        check(objectType, input: "A*12", placeholder: "A*12##**", condition: true)
//        check(objectType, input: "A*123", placeholder: "A*123#**", condition: true)
//        check(objectType, input: "A*1234", placeholder: "A*1234**", condition: true)
//        check(objectType, input: "A*123#", placeholder: "A*123#**", condition: true)
//        check(objectType, input: "A*123#E", placeholder: "A*123#E*", condition: true)
//        check(objectType, input: "A*123#EE", placeholder: "A*123#EE", condition: true)
//        check(objectType, input: "A*123#*E", placeholder: "A*123#*E", condition: true)
//        check(objectType, input: "A*#23#*E", placeholder: "A*#23#*E", condition: true)
//        check(objectType, input: "A*##3#*E", placeholder: "A*##3#*E", condition: true)
//        check(objectType, input: "A*####*E", placeholder: "A*####*E", condition: true)
//        check(objectType, input: "A*####**", placeholder: "A*####**", condition: true)
//        check(objectType, input: "**####**", placeholder: "**####**", condition: true)
//        check(objectType, input: "AA1234CC", placeholder: "AA1234CC", condition: true)
    }
    
    func testAutoNotMatch(objectType : PlateUAProtocol.Type)
    {
//        check(objectType, input: "PA1234EE", placeholder: "PA1234EE", condition: false)
//        check(objectType, input: "P", placeholder: "P*####**", condition: false)
//        check(objectType, input: "AY", placeholder: "AY####**", condition: false)
//        check(objectType, input: "AAA", placeholder: "AAA###**", condition: false)
//        check(objectType, input: "AA12345", placeholder: "AA12345*", condition: false)
//        check(objectType, input: "AA123E", placeholder: "AA123E**", condition: false)
//        check(objectType, input: "AA1234EQ", placeholder: "AA1234EQ", condition: false)
//        check(objectType, input: "AA1234*N", placeholder: "AA1234*N", condition: false)
    }
    
    func testAuto04Match()
    {
        testAutoMatch(PlateUAAuto04.self)
    }

    func testAuto04NotMatch()
    {
        testAutoNotMatch(PlateUAAuto04.self)
    }
    
    func testAuto15Match()
    {
        testAutoMatch(PlateUAAuto15.self)
    }
    
    func testAuto15NotMatch()
    {
        testAutoNotMatch(PlateUAAuto15.self)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}