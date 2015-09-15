//
//  PlateUAType1_2015.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/25/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

/* 2004 - 1 Jul 2013 */
class PlateUAAutoDiplomatic04_13 : PlateUAAuto04
{
    static let kDiplomatic04_13_MaxLength = 7
    
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Diplomatic
    }
    
    override class func regexp() -> String?
    {
        let unknownLetter = "\\" + self.unknownLetterChar()
        let unknownNumber = "\\" + self.unknownNumChar()
        
        return
            "(^[D\(unknownLetter)])" +
            "([\\d\(unknownNumber)]{3})" +
            "([\\d\(unknownNumber)]{3})$"
    }
    
    override var body : String?
    {
        var result : String? = super.value
        
        if let full = result
        {
            let range = Range<String.Index>(start: advance(full.startIndex, 1), end: advance(full.startIndex, 4))
            
            result = full.substringWithRange(range)
        }
        
        return result
    }

    override var prefix : String?
    {
        var result : String? = super.value
        
        if let full = result
        {
            let index : String.Index = advance(full.startIndex, 1)
            
            result = full.substringToIndex(index)
        }
        
        return result
    }

    override var suffix : String?
    {
        var result : String? = super.value
        
        if let full = result
        {
            let index : String.Index = advance(full.endIndex, -3)
            
            result = full.substringFromIndex(index)
        }
        
        return result
    }
    
    override class func maxLength() -> Int
    {
        return kDiplomatic04_13_MaxLength
    }
    
    
    override class func charTypeForCharIndex(index : Int) -> PlateTemplatableCharType?
    {
        var result : PlateTemplatableCharType?
        
        switch (index)
        {
        case 0:
            result = PlateTemplatableCharType.Letter
        case 1...6:
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
        return PlateUAConstants.PlateOwnType.Diplomatic
    }
    
    override var year : String
    {
        var result = "2004-2013"
        
        return result
    }
}

/* 1 Jul 2013 - */
class PlateUAAutoDiplomatic13_DP : PlateUAAutoDiplomatic04_13
{
    static let kDiplomatic13_DP_MaxLength = 8
    
    override class func regexp() -> String?
    {
        let unknownLetter = "\\" + self.unknownLetterChar()
        let unknownNumber = "\\" + self.unknownNumChar()
        
        return
            "(^[D\(unknownLetter)][P\(unknownLetter)])" +
            "([\\d\(unknownNumber)]{3})" +
            "([\\d\(unknownNumber)]{3})$"
    }
    
    override var body : String?
    {
        var result : String? = super.value
        
        if let full = result
        {
            let range = Range<String.Index>(start: advance(full.startIndex, 2), end: advance(full.startIndex, 5))
            
            result = full.substringWithRange(range)
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
    
    override class func maxLength() -> Int
    {
        return kDiplomatic13_DP_MaxLength
    }
    
    
    override class func charTypeForCharIndex(index : Int) -> PlateTemplatableCharType?
    {
        var result : PlateTemplatableCharType?
        
        switch (index)
        {
        case 0...1:
            result = PlateTemplatableCharType.Letter
        case 2...7:
            result = PlateTemplatableCharType.Num
        default:
            result = nil
        }
        
        return result
    }
    
    override var year : String
    {
        var result = "2013"
        
        return result
    }
}

class PlateUAAutoDiplomatic13_S : PlateUAAutoDiplomatic04_13
{
    override class func regexp() -> String?
    {
        let unknownLetter = "\\" + self.unknownLetterChar()
        let unknownNumber = "\\" + self.unknownNumChar()
        
        return
            "(^[S\(unknownLetter)])" +
            "([\\d\(unknownNumber)]{3})" +
            "([\\d\(unknownNumber)]{3})$"
    }

    override var year : String
    {
        var result = "2013"
        
        return result
    }
}

class PlateUAAutoDiplomatic13_CDP : PlateUAAutoDiplomatic13_DP
{
    static let kDiplomatic13_CDP_MaxLength = 6
    
    override class func regexp() -> String?
    {
        let unknownLetter = "\\" + self.unknownLetterChar()
        let unknownNumber = "\\" + self.unknownNumChar()
        
        return
            "(^[C\(unknownLetter)][D\(unknownLetter)][P\(unknownLetter)])" +
            "([\\d\(unknownNumber)]{3})$"
    }
    
    override var body : String?
    {
        return nil
    }
    
    override var prefix : String?
    {
        var result : String? = super.value
        
        if let full = result
        {
            let index : String.Index = advance(full.startIndex, 3)
            
            result = full.substringToIndex(index)
        }
        
        return result
    }
    
    override var suffix : String?
    {
        var result : String? = super.value
        
        if let full = result
        {
            let index : String.Index = advance(full.endIndex, -3)
            
            result = full.substringFromIndex(index)
        }
        
        return result
    }
    
    override class func maxLength() -> Int
    {
        return kDiplomatic13_CDP_MaxLength
    }
    
    override class func charTypeForCharIndex(index : Int) -> PlateTemplatableCharType?
    {
        var result : PlateTemplatableCharType?
        
        switch (index)
        {
        case 0...2:
            result = PlateTemplatableCharType.Letter
        case 3...5:
            result = PlateTemplatableCharType.Num
        default:
            result = nil
        }
        
        return result
    }
}
