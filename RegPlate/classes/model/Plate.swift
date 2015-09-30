//
//  Plate.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/20/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

protocol PlateProtocol
{
    /**
    * Background image
    */
    var back   : String { get }
    /**
    * Plate number
    */
    var value  : String? { get }
    /**
    * Region details
    */
    var area   : String? { get }
    /**
    * Plate year range
    */
    var year   : String? { get }
    
    /**
    * Plate type
    */
    var type : String { get }
    
    func isEqualTo(plate : PlateProtocol) -> Bool
}

enum PlateTemplatableCharType : Int
{
    case Num = 0, Letter
}

protocol PlateTemplatable
{
    static func unknownNumChar()    -> String
    static func unknownLetterChar() -> String
    
    static func charTypeForCharIndex(index : Int) -> PlateTemplatableCharType?
    
    static func maxLength() -> Int
}

protocol Plates
{
    static func plates (input : String) -> [PlateProtocol]
}
