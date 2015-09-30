//
//  PlateUAType1_2015.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/25/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

class PlateUAAutoTemporary04 : PlateUAAuto04
{
    required init(input: String)
    {
        super.init(input: input)
        
        uaType = PlateUAConstants.PlateTypes.Auto_Temporary_04
    }
    
    override class func regexp() -> String?
    {
        let unknownLetter = "\\" + self.unknownLetterChar()
        let unknownNumber = "\\" + self.unknownNumChar()
        
        return
            "((^[0\(unknownNumber)][123456789\(unknownNumber)])" +
                "|(^[1\(unknownNumber)][0123456789\(unknownNumber)])" +
                "|(^[2\(unknownNumber)][012345678\(unknownNumber)]))" +
            "(\(PlateUA.tails)" +
            "|[\(PlateUA.allSymbols)]\(unknownLetter)" +
            "|\(unknownLetter)[\(PlateUA.allSymbols)]" +
            "|\(unknownLetter)\(unknownLetter))" +
            "([\\d\(unknownNumber)]{4})$"
    }
    
    override var body : String?
    {
        var result : String? = super.value
        
        if let full = result
        {
            let range = Range<String.Index>(start: advance(full.startIndex, 2), end: advance(full.startIndex, 4))
            
            result = full.substringWithRange(range)
        }
        
        return result
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
    
    override class func charTypeForCharIndex(index : Int) -> PlateTemplatableCharType?
    {
        var result : PlateTemplatableCharType?
        
        switch (index)
        {
        case 0, 1, 4, 5, 6, 7:
            result = PlateTemplatableCharType.Num
        case 2, 3:
            result = PlateTemplatableCharType.Letter
        default:
            result = nil
        }
        
        return result
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

class PlateUAAutoTemporary15 : PlateUAAutoTemporary04
{
    required init(input: String)
    {
        super.init(input: input)
        
        uaType = PlateUAConstants.PlateTypes.Auto_Temporary_15
    }
}
