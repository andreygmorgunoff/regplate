//
//  PlateUAType1_2015.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/25/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

class PlateUAAutoTemporaryDealer04 : PlateUAAutoTemporary04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Auto_Trade_Temporary_04
    }
    
    override class func regexp() -> String?
    {
        let unknownLetter = "\\" + self.unknownLetterChar()
        let unknownNumber = "\\" + self.unknownNumChar()
        
        return
//            "([\(PlateUA.allSymbols)\(unknownLetter)]" +
            "([T\(unknownLetter)]" +
            "[\\d\(unknownNumber)])" +
            "(\(PlateUA.tails)" +
            "|[\(PlateUA.allSymbols)]\(unknownLetter)" +
            "|\(unknownLetter)[\(PlateUA.allSymbols)]" +
            "|\(unknownLetter)\(unknownLetter))" +
            "([\\d\(unknownNumber)]{4})"
    }
    
    override var suffix : String?
    {
        var result : String? = super.value
        
        if let full = result
        {
            let index : String.Index = advance(full.startIndex, 2)
            
            result = full.substringFromIndex(index)
        }
        
        return result
    }
    
    override var prefix : String?
    {
        var result : String? = super.value
        
        if let full = result
        {
            let index : String.Index = advance(full.startIndex, 2)
            
            result = full.substringToIndex(index)
        }
        
        return result
    }
    
    override class func charTypeForCharIndex(index : Int) -> PlateTemplatableCharType?
    {
        var result : PlateTemplatableCharType?
        
        switch (index)
        {
        case 1, 4, 5, 6, 7:
            result = PlateTemplatableCharType.Num
        case 0, 2, 3:
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
}

class PlateUAAutoTemporaryDealer15 : PlateUAAutoTemporaryDealer04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Auto_Trade_Temporary_15
    }
}
