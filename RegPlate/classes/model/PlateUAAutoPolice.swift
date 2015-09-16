//
//  PlateUAType1_2015.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/25/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

class PlateUAAutoPolice04 : PlateUAAuto04
{
    static let kPoliceMaxLength = 6
    
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Police_04
    }
    
    override class func regexp() -> String?
    {
        let unknownLetter = "\\" + self.unknownLetterChar()
        let unknownNumber = "\\" + self.unknownNumChar()
        
        return
            "((^[0\(unknownNumber)][123456789\(unknownNumber)])" +
                "|(^[1\(unknownNumber)][0123456789\(unknownNumber)])" +
                "|(^[2\(unknownNumber)][012345678\(unknownNumber)]))" +
            "([\\d\(unknownNumber)]{4})$"
    }
    
    override var body : String?
    {
        return ""
    }
    
    override var suffix : String?
    {
        var result : String? = super.value
        
        if let full = result
        {
            let index : String.Index = advance(full.endIndex, -4)
            
            result = full.substringFromIndex(index)
        }
        
        return result
    }
    
    override class func maxLength() -> Int
    {
        return kPoliceMaxLength
    }
    
    
    override class func charTypeForCharIndex(index : Int) -> PlateTemplatableCharType?
    {
        var result : PlateTemplatableCharType?
        
        switch (index)
        {
        case 0...6:
            result = PlateTemplatableCharType.Num
        default:
            result = nil
        }
        
        return result
    }
    
    /**
    * Plate own type
    */
    override var ownType : PlateUAConstants.PlateOwnType
    {
        return PlateUAConstants.PlateOwnType.Milicia
    }
    
    override var area  : String?
    {
        var result : String?
        
        if let region = region04()
        {
            result = "\(region.region!)"
        }
        
        return result
    }
}

class PlateUAAutoPolice15 : PlateUAAutoPolice04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Police_15
    }
}
