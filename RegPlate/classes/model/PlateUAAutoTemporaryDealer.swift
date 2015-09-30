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
        
        uaType = PlateUAConstants.PlateTypes.Auto_Trade_Temporary_04
    }
    
    override class func regexp() -> String?
    {
        let unknownLetter = "\\" + self.unknownLetterChar()
        let unknownNumber = "\\" + self.unknownNumChar()
        
        return
            "(^[T\(unknownLetter)]" +
            "[\\d\(unknownNumber)])" +
            "(\(PlateUA.tails)" +
            "|[\(PlateUA.allSymbols)]\(unknownLetter)" +
            "|\(unknownLetter)[\(PlateUA.allSymbols)]" +
            "|\(unknownLetter)\(unknownLetter))" +
            "([\\d\(unknownNumber)]{4})$"
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
    
    override var area  : String?
    {
        return ""
    }
}

class PlateUAAutoTemporaryDealer15 : PlateUAAutoTemporaryDealer04
{
    required init(input: String)
    {
        super.init(input: input)
        
        uaType = PlateUAConstants.PlateTypes.Auto_Trade_Temporary_15
    }
}
