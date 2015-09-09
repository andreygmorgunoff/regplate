//
//  PlateUAType1_2015.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/25/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

class PlateUAMotoTemporary04 : PlateUAAutoTemporary04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Motorbike_Temporary_04
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

    override var suffix : String?
    {
        var result : String? = super.value
        
        if let full = result
        {
            let range = Range<String.Index>(start: advance(full.startIndex, 2), end: advance(full.startIndex, 4))
            
            result = full.substringWithRange(range)
        }
        
        return result
    }
    
    override var body : String?
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
}

class PlateUAMotoTemporary15 : PlateUAMotoTemporary04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Motorbike_Temporary_15
    }
}
