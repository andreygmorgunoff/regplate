//
//  PlateUAType1_2015.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/25/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

class PlateUAMotorcycleTemporary04 : PlateUAMotoTemporary04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Motorcycle_Temporary_04
    }
    
    /**
    * Plate engine type
    */
    override var engineType : PlateUAConstants.PlateEngineType
    {
        return PlateUAConstants.PlateEngineType.MoreThen50
    }
}

class PlateUAMotorcycleTemporary15 : PlateUAMotorcycleTemporary04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Motorcycle_Temporary_15
    }
}
