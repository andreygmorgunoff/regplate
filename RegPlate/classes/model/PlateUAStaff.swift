//
//  PlateUAType1.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/20/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

class PlateUAStaff10 : PlateUAAuto04
{
    required init(input : String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Specific_10
    }
    
    override class func regexp() -> String?
    {
        let unknownLetter = "\\" + self.unknownLetterChar()
        let unknownNumber = "\\" + self.unknownNumChar()
        
        return
            "(^[\\d\(unknownNumber)]{5})" +
            "[T\(unknownLetter)]" +
            "(\(PlateUA.series)" +
            "|[\(PlateUA.prefixSeries)]\(unknownLetter)" +
            "|\(unknownLetter)[\(PlateUA.allSymbols)]" +
            "|\(unknownLetter)\(unknownLetter))"
    }
    
    
    override var prefix : String?
    {
        return ""
    }
    
    override var body : String?
    {
        var result : String? = super.value
        
        if let full = result
        {
            let index : String.Index = advance(full.startIndex, 5)
            
            result = full.substringToIndex(index)
        }
        
        return result
    }
    
    override var suffix : String?
    {
        var result : String? = super.value
        
        if let full = result
        {
            let index : String.Index = advance(full.endIndex, -2)
            
            result = full.substringFromIndex(index)
        }
        
        return result
    }
    
    override class func charTypeForCharIndex(index : Int) -> PlateTemplatableCharType?
    {
        var result : PlateTemplatableCharType?
        
        switch (index)
        {
        case 0...4:
            result = PlateTemplatableCharType.Num
        case 5...7:
            result = PlateTemplatableCharType.Letter
        default:
            result = nil
        }
        
        return result
    }

    override func region() -> PlateUAConstants.PlateRegions?
    {
        var result : PlateUAConstants.PlateRegions? = nil;
        
        if let regionStr = suffix
        {
            result = PlateUAConstants.PlateRegions(rawValue: regionStr)
        }
        
        return result
    }
    
    override var area  : String?
    {
        var result : String?
        
        if let region = region()
        {
            result = "\(region.region!)"
        }
        
        return result
    }
    
    override var ownType : PlateUAConstants.PlateOwnType
    {
        return PlateUAConstants.PlateOwnType.Mountain
    }
}

class PlateUAStaffTemporary15 : PlateUAMotoTemporaryDealer15
{
    required init(input : String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Specific_Temporary_15
    }

    override class func regexp() -> String?
    {
        let unknownLetter = "\\" + self.unknownLetterChar()
        let unknownNumber = "\\" + self.unknownNumChar()
        
        return
            "^(T\(unknownLetter)" +
                "|\(unknownLetter)P" +
                "|\(unknownLetter)\(unknownLetter)" +
                "|TP)" +
                "(\(PlateUA.series)" +
                "|[\(PlateUA.prefixSeries)]\(unknownLetter)" +
                "|\(unknownLetter)[\(PlateUA.allSymbols)]" +
                "|\(unknownLetter)\(unknownLetter))" +
        "([\\d\(unknownNumber)]{4})$";
    }
    
    override var prefix : String?
    {
        return "  "
    }

    override func region() -> PlateUAConstants.PlateRegions?
    {
        var result : PlateUAConstants.PlateRegions? = nil;
        
        if let regionStr = body
        {
            result = PlateUAConstants.PlateRegions(rawValue: regionStr)
        }
        
        return result
    }
    
    override var area  : String?
    {
        var result : String?
        
        if let region = region()
        {
            result = "\(region.region!)"
        }
        
        return result
    }
}
