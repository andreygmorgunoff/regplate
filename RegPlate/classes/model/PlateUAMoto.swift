//
//  PlateUAType1.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/20/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

class PlateUAMoto04 : PlateUAAuto04
{
    required init(input : String)
    {
        super.init(input: input)
        
        uaType = PlateUAConstants.PlateTypes.Motorbike_04
    }
    
    override class func regexp() -> String?
    {
        let unknownLetter = "\\" + self.unknownLetterChar()
        let unknownNumber = "\\" + self.unknownNumChar()
        
        return "(^\(PlateUA.series)" +
            "|[\(PlateUA.prefixSeries)]\(unknownLetter)" +
            "|\(unknownLetter)[\(PlateUA.allSymbols)]" +
            "|\(unknownLetter)\(unknownLetter))" +
            
            "(\(PlateUA.tails)" +
            "|[\(PlateUA.allSymbols)]\(unknownLetter)" +
            "|\(unknownLetter)[\(PlateUA.allSymbols)]" +
            "|\(unknownLetter)\(unknownLetter))" +
        
            "([\\d\(unknownNumber)]{4})$";
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
    
    
    /**
    * Plate engine type
    */
    override var engineType : PlateUAConstants.PlateEngineType
    {
        return PlateUAConstants.PlateEngineType.LessThen50
    }
    
    override class func charTypeForCharIndex(index : Int) -> PlateTemplatableCharType?
    {
        var result : PlateTemplatableCharType?
        
        switch (index)
        {
        case 4, 5, 6, 7:
            result = PlateTemplatableCharType.Num
        case 0, 1, 2, 3:
            result = PlateTemplatableCharType.Letter
        default:
            result = nil
        }
        
        return result
    }
}

class PlateUAMoto15 : PlateUAMoto04
{
    required init(input: String)
    {
        super.init(input: input)
        
        uaType = PlateUAConstants.PlateTypes.Motorbike_15
    }
}
