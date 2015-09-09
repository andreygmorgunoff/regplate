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
        
        type = PlateUAConstants.PlateTypes.Motorbike_04
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
            let index : String.Index = advance(full.endIndex, -2)
            
            result = full.substringFromIndex(index)
        }
        
        return result
    }
    
    override var body : String?
    {
        var result : String? = super.value
        
        if let full = result
        {
            result = full.substringWithRange(Range<String.Index>(start: advance(full.startIndex, 2), end: advance(full.endIndex, -2)))
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

class PlateUAMoto15 : PlateUAMoto04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Motorbike_15
    }
}
