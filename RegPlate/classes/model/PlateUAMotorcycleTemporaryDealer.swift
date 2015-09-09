//
//  PlateUAType1_2015.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/25/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

class PlateUAMotorcycleTemporaryDealer04 : PlateUAMotoTemporaryDealer04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Motorcycle_Trade_Temporary_04
    }
    
    /**
    * Plate own type
    */
    override var ownType : PlateUAConstants.PlateOwnType
    {
        return PlateUAConstants.PlateOwnType.TradeDialer
    }
    
    /**
    * Plate engine type
    */
    override var engineType : PlateUAConstants.PlateEngineType
    {
        return PlateUAConstants.PlateEngineType.MoreThen50
    }
}

class PlateUAMotorcycleTemporaryDealer15 : PlateUAMotorcycleTemporaryDealer04
{
    required init(input: String)
    {
        super.init(input: input)
        
        type = PlateUAConstants.PlateTypes.Motorcycle_Trade_Temporary_15
    }
}
