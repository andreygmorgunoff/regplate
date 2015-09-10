//
//  PlateUAType1_2015.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/25/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

class PlateUAMotorcycleTemporaryDealer04 : PlateUAMotoTemporaryDealer04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Motorcycle_Trade_Temporary_04
    }
    
    override class func regexp() -> String?
    {
        let unknownLetter = "\\" + self.unknownLetterChar()
        let unknownNumber = "\\" + self.unknownNumChar()
        
        return
                "([T\(unknownLetter)]" +
                "[\\d\(unknownNumber)])" +
                "([\\d\(unknownNumber)]{4})" +
                "(\(PlateUA.tails)" +
                "|[\(PlateUA.allSymbols)]\(unknownLetter)" +
                "|\(unknownLetter)[\(PlateUA.allSymbols)]" +
                "|\(unknownLetter)\(unknownLetter))"
    }
    
    override var body : String?
    {
        var result : String? = super.value
        
        if let full = result
        {
            let range = Range<String.Index>(start: advance(full.startIndex, 2), end: advance(full.startIndex, 6))
            
            result = full.substringWithRange(range)
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
        case 1, 2, 3, 4, 5:
            result = PlateTemplatableCharType.Num
        case 0, 6, 7:
            result = PlateTemplatableCharType.Letter
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
        return PlateUAConstants.PlateOwnType.TradeDialer
    }
    
    /**
    * Plate engine type
    */
    override var engineType : PlateUAConstants.PlateEngineType
    {
        return PlateUAConstants.PlateEngineType.MoreThen50
    }
}

class PlateUAMotorcycleTemporaryDealer15 : PlateUAMotorcycleTemporaryDealer04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Motorcycle_Trade_Temporary_15
    }
}
