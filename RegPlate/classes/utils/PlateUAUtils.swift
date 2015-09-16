//
//  PlateUAUtils.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/25/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

struct PlateUAUtils : Plates
{
    static func plates (input : String) -> [PlateProtocol]
    {
        var result = [PlateProtocol]()

        // 1.1 (2004)
        var plate = PlateUAAuto04(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }

        // 1.1 (2015)
        plate = PlateUAAuto15(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }

        // 1.2 (2004)
        plate = PlateUAAutoTaxi04(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 1.2 (2015)
        plate = PlateUAAutoTaxi15(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 2.1 (2004)
        plate = PlateUAAutoTemporary04(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 2.1 (2015)
        plate = PlateUAAutoTemporary15(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 2.2 (2004)
        plate = PlateUAAutoTemporaryDealer04(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 2.2 (2015)
        plate = PlateUAAutoTemporaryDealer15(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 3.1 (2004)
        plate = PlateUAMoto04(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
 
        // 3.1 (2015)
        plate = PlateUAMoto15(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }

        // 3.2 (2004)
        plate = PlateUAMotoTemporary04(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 3.2 (2015)
        plate = PlateUAMotoTemporary15(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 3.3 (2004)
        plate = PlateUAMotoTemporaryDealer04(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 3.3 (2015)
        plate = PlateUAMotoTemporaryDealer15(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 4 (2004 - 2013)
        plate = PlateUAAutoDiplomatic04_13(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }

        // 4 (2013-)
        plate = PlateUAAutoDiplomatic13_CDP(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }

        // 4 (2013-)
        plate = PlateUAAutoDiplomatic13_DP(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }

        // 4 (2013-)
        plate = PlateUAAutoDiplomatic13_S(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }

        // 5 (2004)
        plate = PlateUAMotorcycle04(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 5 (2015)
        plate = PlateUAMotorcycle15(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 6.1 (2004)
        plate = PlateUAMotorcycleTemporary04(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 6.1 (2015)
        plate = PlateUAMotorcycleTemporary15(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 6.2 (2004)
        plate = PlateUAMotorcycleTemporaryDealer04(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 6.2 (2015)
        plate = PlateUAMotorcycleTemporaryDealer15(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 7.3 (2004)
        plate = PlateUAAutoUsaJapan04(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 7.3 (2015)
        plate = PlateUAAutoUsaJapan15(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }

        // 8 (1995)
        plate = PlateUAAutoTracktor95(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 8 (2013)
        plate = PlateUAAutoTracktorTemporary13(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 9 (1995)
        plate = PlateUAAutoArmy95(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 10 (1995)
        plate = PlateUAAutoArmyMoto95(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 11 (2004)
        plate = PlateUAAutoPolice04(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 11 (2015)
        plate = PlateUAAutoPolice15(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }

        return result
    }
    
    static func backImageNameFor (#type : PlateUAConstants.PlateTypes) -> String
    {
        return type.rawValue
    }
    
    static func autoTypesForPlateType (plateType : PlateUAConstants.PlateTypes) -> Set<PlateUAConstants.AutoTypes>
    {
        var result = Set<PlateUAConstants.AutoTypes>()
        
        switch plateType
        {
            case
            PlateUAConstants.PlateTypes.Auto_04,
            PlateUAConstants.PlateTypes.Auto_15,
            PlateUAConstants.PlateTypes.Auto_Temporary_04,
            PlateUAConstants.PlateTypes.Auto_Temporary_15,
            PlateUAConstants.PlateTypes.Auto_Trade_Temporary_04,
            PlateUAConstants.PlateTypes.Auto_Trade_Temporary_15 :
            
                result.insert(PlateUAConstants.AutoTypes.Car)
                result.insert(PlateUAConstants.AutoTypes.Bus)
                result.insert(PlateUAConstants.AutoTypes.Track)
                result.insert(PlateUAConstants.AutoTypes.Trailer)
            
            case
            PlateUAConstants.PlateTypes.Auto_Taxi_04,
            PlateUAConstants.PlateTypes.Auto_Taxi_15 :
            
                result.insert(PlateUAConstants.AutoTypes.Bus)
            
            case
            PlateUAConstants.PlateTypes.Motorbike_04,
            PlateUAConstants.PlateTypes.Motorbike_15,
            PlateUAConstants.PlateTypes.Motorbike_Temporary_04,
            PlateUAConstants.PlateTypes.Motorbike_Temporary_15,
            PlateUAConstants.PlateTypes.Motorbike_Trade_Temporary_04,
            PlateUAConstants.PlateTypes.Motorbike_Trade_Temporary_15,
            PlateUAConstants.PlateTypes.Motorcycle_04,
            PlateUAConstants.PlateTypes.Motorcycle_15,
            PlateUAConstants.PlateTypes.Motorcycle_Temporary_04,
            PlateUAConstants.PlateTypes.Motorcycle_Temporary_15,
            PlateUAConstants.PlateTypes.Motorcycle_Trade_Temporary_04,
            PlateUAConstants.PlateTypes.Motorcycle_Trade_Temporary_15 :
            
                result.insert(PlateUAConstants.AutoTypes.Moto)
            
            case
            PlateUAConstants.PlateTypes.USA_Japan_04,
            PlateUAConstants.PlateTypes.USA_Japan_15,
            PlateUAConstants.PlateTypes.Police_04,
            PlateUAConstants.PlateTypes.Police_15,
            PlateUAConstants.PlateTypes.Diplomatic
                :
                
                result.insert(PlateUAConstants.AutoTypes.Car)
                result.insert(PlateUAConstants.AutoTypes.Bus)
                result.insert(PlateUAConstants.AutoTypes.Track)
            
            case
            PlateUAConstants.PlateTypes.Army_95
                :
                result.insert(PlateUAConstants.AutoTypes.Car)
                result.insert(PlateUAConstants.AutoTypes.Bus)
                result.insert(PlateUAConstants.AutoTypes.Track)
                result.insert(PlateUAConstants.AutoTypes.Tracktor)

            case
            PlateUAConstants.PlateTypes.Army_Moto_95
                :
                result.insert(PlateUAConstants.AutoTypes.Moto)
                result.insert(PlateUAConstants.AutoTypes.Trailer)

            case
            PlateUAConstants.PlateTypes.Tractor_95,
            PlateUAConstants.PlateTypes.Tractor_Temporary_13
                :
                result.insert(PlateUAConstants.AutoTypes.Tracktor)
                result.insert(PlateUAConstants.AutoTypes.Trailer)
            
            default :
                
                ()
//
//            // 7.1
//        case Auto_Individual_04 = "7.1.04"
//        case Auto_Individual_04_2 = "7.1.04.2"
//            
//            // 7.2
//        case Motorcycle_Individual_04 = "7.2.04"
//        case Motorcycle_Individual_04_2 = "7.2.04.2"
//            
//            // 7.4
//        case USA_Japan_Individual_04 = "7.4.04"
//            
//            // 9.1
//        case Army_Volonter_14 = "9.1.14"
//            
//            // 12.1
//        case Specific_10 = "12.1.10"
//            
//            // 12.2
//        case Specific_Temporary_10 = "12.2.10"
        }
        
        return result
    }
}