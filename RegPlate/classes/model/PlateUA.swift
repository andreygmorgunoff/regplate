//
//  PlateUA.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/20/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

protocol PlateUAProtocol : PlateProtocol
{
    /**
    * Plate type
    */
    var type : PlateUAConstants.PlateTypes { get }
    
    /**
    * Plate mode
    */
    var mode : PlateUAConstants.PlateMode { get }
    
    /**
    * Plate own type
    */
    var ownType : PlateUAConstants.PlateOwnType { get }
    
    /**
    * Plate engine type
    */
    var engineType : PlateUAConstants.PlateEngineType { get }
    
    /**
    * Plate country type
    */
    var countryType : PlateUAConstants.PlateCountryType { get }
    
    /**
    * Prefix-Plate number
    */
    var prefix  : String? { get }
    /**
    * Suffix-Plate number
    */
    var suffix  : String? { get }
    /**
    * Body-Plate number
    */
    var body  : String? { get }
    
    var unique : Bool { get }
    
    init(input : String)
}

class PlateUA : PlateUAProtocol, PlateTemplatable
{
    /**
    * User number to check
    */
    let input : String
    
    static let prefixSeries : String =
        "ABCIHK"
    
    static let allSymbols : String =
        "ABCEHIKMOPTX"
    
    static let series : String =
        "AA|BA|CA|HA|IA|KA|" +
        "AB|BB|CB|HB|IB|KB|" +
        "AC|BC|HC|KC|" +
        "AE|BE|CE|HE|IE|KE|" +
        "AH|BH|CH|HH|IH|KH|" +
        "AI|BI|HI|KI|" +
        "AK|BK|HK|KK|" +
        "AM|BM|HM|КМ|" +
        "AO|BO|HO|KO|" +
        "AP|KP|" +
        "AT|BT|HT|KT|" +
        "AX|BX|HX|KX"
    
    static let tails : String =
        "AA|BA|CA|EA|HA|IA|KA|MA|OA|PA|TA|XA|" +
        "AB|BB|CB|EB|HB|IB|KB|MB|OB|PB|TB|XB|" +
        "AC|BC|CC|EC|HC|IC|KC|MC|OC|PC|TC|XC|" +
        "AE|BE|CE|EE|HE|IE|KE|ME|OE|PE|TE|XE|" +
        "AH|BH|CH|EH|HH|IH|KH|MH|OН|PH|TH|XH|" +
        "AI|BI|CI|EI|HI|II|KI|MI|OI|PI|TI|XI|" +
        "AK|BK|CK|EK|HK|IK|KK|MK|OK|PK|TK|XK|" +
        "AM|BM|CM|EM|HM|IM|КМ|MM|OM|PM|TM|XM|" +
        "AO|BO|CO|EO|HO|IO|KO|MO|OO|PO|TO|XO|" +
        "AP|ВР|CP|EP|HP|IP|KP|MP|OP|PP|TP|XP|" +
        "AT|BT|CT|ET|HT|IT|KT|MT|OT|PT|TT|XT|" +
        "AX|BX|CX|EX|HX|IX|KX|MX|OX|PX|TX|ХХ"
    
    required init(input : String)
    {
        self.input = input
        
        type = PlateUAConstants.PlateTypes.Unknown
    }
    
    class func regexp() -> String?
    {
        return nil;
    }
    
    func match (input : String ) -> Bool
    {
        var result = false
        
        if let regexp = self.dynamicType.regexp()
        {
            result = RegExp(regexp).test(input);
        }
        
        return result
    }
    
    func region04() -> PlateUAConstants.PlateRegions04?
    {
        var result : PlateUAConstants.PlateRegions04? = nil;
        
        let number : String = self.input
        
        if (count(number) > 1)
        {
            let index : String.Index = advance(number.startIndex, 2)
            
            let regionStr : String = number.substringToIndex(index)
            
            result = PlateUAConstants.PlateRegions04(rawValue: regionStr)
        }
        
        return result
    }
    
    func region() -> PlateUAConstants.PlateRegions?
    {
        var result : PlateUAConstants.PlateRegions? = nil;
        
        let number : String = self.input
        
        if (count(number) > 1)
        {
            let index : String.Index = advance(number.startIndex, 2)
            
            let regionStr : String = number.substringToIndex(index)
            
            result = PlateUAConstants.PlateRegions(rawValue: regionStr)
        }
        
        return result
    }
    
    var type   = PlateUAConstants.PlateTypes.Unknown
    
    var back   : String
    {
        return PlateUAUtils.backImageNameFor(type: type)
    }
    
    var year  : String?
    {
        var result : String?
        
        if let region = region()
        {
            result = "\(region.year!)"
        }
        
        return result
    }
    
    var area  : String?
    {
        var result : String?
        
        if let region = region()
        {
            result = "\(region.region!)"
        }
        
        return result
    }
    
    var value : String?
    {
        var result : String? = self.normalizedInput()
        
        if (result != nil)
        {
            let matched : Bool = self.match(result!)
            
            if (!matched)
            {
                result = nil
            }
        }
        
        return result
    }
    
    var prefix : String?
    {
        var result : String? = value
        
        if let full = result
        {
            let index : String.Index = advance(full.startIndex, 2)
            
            result = full.substringToIndex(index)
        }
        
        return result
    }
    
    var suffix : String?
    {
        var result : String? = value
        
        if let full = result
        {
            let index : String.Index = advance(full.endIndex, -2)
            
            result = full.substringFromIndex(index)
        }
        
        return result
    }
    
    var body : String?
    {
        var result : String? = value
        
        if let full = result
        {
            result = full.substringWithRange(Range<String.Index>(start: advance(full.startIndex, 2), end: advance(full.endIndex, -2)))
        }
        
        return result
    }
    
    
    func normalizedInput() -> String
    {
        return input
    }
    
    /**
    * Plate type
    */
    var mode : PlateUAConstants.PlateMode
    {
        return PlateUAConstants.PlateMode.Regular
    }
    
    /**
    * Plate own type
    */
    var ownType : PlateUAConstants.PlateOwnType
    {
        return PlateUAConstants.PlateOwnType.Civil
    }
    
    /**
    * Plate engine type
    */
    var engineType : PlateUAConstants.PlateEngineType
    {
        return PlateUAConstants.PlateEngineType.MoreThen50
    }
    
    /**
    * Plate country type
    */
    var countryType : PlateUAConstants.PlateCountryType
    {
        return PlateUAConstants.PlateCountryType.Other
    }
    
    var unique : Bool
    {
        let output : String = self.normalizedInput()
        var result = false
        
        if output.rangeOfString(self.dynamicType.unknownNumChar()) == nil
        {
            if output.rangeOfString(self.dynamicType.unknownLetterChar()) == nil
            {
                result = true
            }
        }
        
        return result
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
        return 0
    }
    
    class func charTypeForCharIndex(index : Int) -> PlateTemplatableCharType?
    {
        return PlateTemplatableCharType.Num
    }

}
