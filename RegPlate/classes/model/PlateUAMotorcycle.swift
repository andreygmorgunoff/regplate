//
//  PlateUAType1.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/20/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

class PlateUAMotorcycle04 : PlateUAMoto04
{
    required init(input : String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Motorcycle_04
    }
    
    /**
    * Plate engine type
    */
    override var engineType : PlateUAConstants.PlateEngineType
    {
        return PlateUAConstants.PlateEngineType.MoreThen50
    }
}

class PlateUAMotorcycle15 : PlateUAMotorcycle04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Motorcycle_15
    }
}
