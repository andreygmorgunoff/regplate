//
//  PlateUAType1_2015.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/25/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

class PlateUAAutoTaxi04 : PlateUAAuto04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Auto_Taxi_04
    }
    
    override var mode : PlateUAConstants.PlateMode
    {
        return PlateUAConstants.PlateMode.Taxi
    }
}

class PlateUAAutoTaxi15 : PlateUAAutoTaxi04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Auto_Taxi_15
    }
}
