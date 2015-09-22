//
//  PlateUAType1.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/20/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

class PlateUAAuto04 : PlateUA, PlateTemplatable
{
    static let kMaxLength = 8;
    
    required init(input : String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Auto_04
    }
    
    override func normalizedInput() -> String
    {
        var result = input
        
        for var index = count(self.input); index < self.dynamicType.maxLength(); index++
        {
            if let charType = self.dynamicType.charTypeForCharIndex(index)
            {
                switch charType
                {
                case .Letter :
                    result += self.dynamicType.unknownLetterChar()
                case .Num :
                    result += self.dynamicType.unknownNumChar()
                }
            }
            else
            {
                break
            }
        }
        
        return result
    }
    
    override class func regexp() -> String?
    {
        let unknownLetter = "\\" + self.unknownLetterChar()
        let unknownNumber = "\\" + self.unknownNumChar()
        
        return "(^\(PlateUA.series)" +
               "|[\(PlateUA.prefixSeries)]\(unknownLetter)" +
               "|\(unknownLetter)[\(PlateUA.allSymbols)]" +
               "|\(unknownLetter)\(unknownLetter))" +
               "([\\d\(unknownNumber)]{4})" +
               "(\(PlateUA.tails)" +
               "|[\(PlateUA.allSymbols)]\(unknownLetter)" +
               "|\(unknownLetter)[\(PlateUA.allSymbols)]" +
               "|\(unknownLetter)\(unknownLetter))$"
    }
    
    class func unknownNumChar() -> String
    {
        return "#"
    }
    
    class func unknownLetterChar() -> String
    {
        return "*"
    }
    
    class func maxLength() -> Int
    {
        return kMaxLength
    }

    class func charTypeForCharIndex(index : Int) -> PlateTemplatableCharType?
    {
        var result : PlateTemplatableCharType?
        
        switch (index)
        {
        case 0, 1, 6, 7:
            result = PlateTemplatableCharType.Letter
        case 2, 3, 4, 5:
            result = PlateTemplatableCharType.Num
        default:
            result = nil
        }

        return result
    }
}

class PlateUAAuto15 : PlateUAAuto04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Auto_15
    }
}

class PlateUAAutoUsaJapan04 : PlateUAAuto04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.USA_Japan_04
    }
    
    /**
    * Plate country type
    */
    override var countryType : PlateUAConstants.PlateCountryType
    {
        return PlateUAConstants.PlateCountryType.JapanUSA
    }
}

class PlateUAAutoUsaJapan15 : PlateUAAutoUsaJapan04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.USA_Japan_15
    }
}
