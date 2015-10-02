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
        
        // 9 (2007)
        plate = PlateUAAutoArmyHead07(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 9.1 (2014)
        plate = PlateUAAutoArmyVolonter14(input: input)
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

        // 11 (2015)
        plate = PlateUAAutoPoliceHead15(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 12.1 (2010)
        plate = PlateUAStaff10(input: input)
        if let value = plate.value
        {
            result.append(plate)
        }
        
        // 12.2 (2015)
        plate = PlateUAStaffTemporary15(input: input)
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
    
    static func autoTypesForPlateType (type : String) -> Set<PlateUAConstants.AutoTypes>
    {
        let plateType = PlateUAConstants.PlateTypes(rawValue: type)!
        
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
            PlateUAConstants.PlateTypes.Diplomatic04_13,
            PlateUAConstants.PlateTypes.Diplomatic13_DP,
            PlateUAConstants.PlateTypes.Diplomatic13_CDP,
            PlateUAConstants.PlateTypes.Diplomatic13_S,
            PlateUAConstants.PlateTypes.Army_Volonter_14
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
            case
            PlateUAConstants.PlateTypes.Army_Head_07,
            PlateUAConstants.PlateTypes.Police_Head_15
                :
                result.insert(PlateUAConstants.AutoTypes.Car)
            
            case
                PlateUAConstants.PlateTypes.Specific_10,
                PlateUAConstants.PlateTypes.Specific_Temporary_15
                :
                result.insert(PlateUAConstants.AutoTypes.Track)
                result.insert(PlateUAConstants.AutoTypes.Tracktor)

            
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
        }
        
        return result
    }
    
    static func convertPlate(dbPlate : TPlate) -> PlateUAProtocol?
    {
        var result : PlateUAProtocol?
        var plateType : PlateUAConstants.PlateTypes =  PlateUAConstants.PlateTypes(rawValue: dbPlate.code)!

        switch plateType
        {
        case .Auto_04 :
            result = PlateUAAuto04(input: dbPlate.plate)
        case .Auto_15 :
            result = PlateUAAuto15(input: dbPlate.plate)
        case .Auto_Taxi_04 :
            result = PlateUAAutoTaxi04(input: dbPlate.plate)
        case .Auto_Taxi_15 :
            result = PlateUAAutoTaxi15(input: dbPlate.plate)
        case .Auto_Temporary_04 :
            result = PlateUAAutoTemporary04(input: dbPlate.plate)
        case .Auto_Temporary_15 :
            result = PlateUAAutoTemporary15(input: dbPlate.plate)
        case .Auto_Trade_Temporary_04 :
            result = PlateUAAutoTemporaryDealer04(input: dbPlate.plate)
        case .Auto_Trade_Temporary_15 :
            result = PlateUAAutoTemporaryDealer15(input: dbPlate.plate)
        case .Motorbike_04 :
            result = PlateUAMoto04(input: dbPlate.plate)
        case .Motorbike_15 :
            result = PlateUAMoto15(input: dbPlate.plate)
        case .Motorbike_Temporary_04 :
            result = PlateUAMotoTemporary04(input: dbPlate.plate)
        case .Motorbike_Temporary_15 :
            result = PlateUAMotoTemporary15(input: dbPlate.plate)
        case .Motorbike_Trade_Temporary_04 :
            result = PlateUAMotoTemporaryDealer04(input: dbPlate.plate)
        case .Motorbike_Trade_Temporary_15 :
            result = PlateUAMotoTemporaryDealer15(input: dbPlate.plate)
        case .Diplomatic04_13 :
            result = PlateUAAutoDiplomatic04_13(input: dbPlate.plate)
        case .Diplomatic13_CDP :
            result = PlateUAAutoDiplomatic13_CDP(input: dbPlate.plate)
        case .Diplomatic13_DP :
            result = PlateUAAutoDiplomatic13_DP(input: dbPlate.plate)
        case .Diplomatic13_S :
            result = PlateUAAutoDiplomatic13_S(input: dbPlate.plate)
        case .Motorcycle_04 :
            result = PlateUAMotorcycle04(input: dbPlate.plate)
        case .Motorcycle_15 :
            result = PlateUAMotorcycle15(input: dbPlate.plate)
        case .Motorcycle_Temporary_04 :
            result = PlateUAMotorcycleTemporary04(input: dbPlate.plate)
        case .Motorcycle_Temporary_15 :
            result = PlateUAMotorcycleTemporary15(input: dbPlate.plate)
        case .Motorcycle_Trade_Temporary_04 :
            result = PlateUAMotorcycleTemporaryDealer04(input: dbPlate.plate)
        case .Motorcycle_Trade_Temporary_15 :
            result = PlateUAMotorcycleTemporaryDealer15(input: dbPlate.plate)
        case .USA_Japan_04 :
            result = PlateUAAutoUsaJapan04(input: dbPlate.plate)
        case .USA_Japan_15 :
            result = PlateUAAutoUsaJapan15(input: dbPlate.plate)
        case .Tractor_95 :
            result = PlateUAAutoTracktor95(input: dbPlate.plate)
        case .Tractor_Temporary_13 :
            result = PlateUAAutoTracktorTemporary13(input: dbPlate.plate)
        case .Army_95 :
            result = PlateUAAutoArmy95(input: dbPlate.plate)
        case .Army_Head_07 :
            result = PlateUAAutoArmyHead07(input: dbPlate.plate)
        case .Army_Volonter_14 :
            result = PlateUAAutoArmyVolonter14(input: dbPlate.plate)
        case .Army_Moto_95 :
            result = PlateUAAutoArmyMoto95(input: dbPlate.plate)
        case .Police_04 :
            result = PlateUAAutoPolice04(input: dbPlate.plate)
        case .Police_15 :
            result = PlateUAAutoPolice15(input: dbPlate.plate)
        case .Police_Head_15 :
            result = PlateUAAutoPoliceHead15(input: dbPlate.plate)
        case .Specific_10 :
            result = PlateUAStaff10(input: dbPlate.plate)
        case .Specific_Temporary_15 :
            result = PlateUAStaffTemporary15(input: dbPlate.plate)
        default:
            result = nil
        }
        
        return result
    }

}