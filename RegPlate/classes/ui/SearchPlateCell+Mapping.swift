//
//  SearchPlateCell+Mapping.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 9/10/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import UIKit

extension SearchPlateCell
{
    func updateMode (plate : PlateUAProtocol)
    {
        self.taxiMode.hidden = (plate.mode != PlateUAConstants.PlateMode.Taxi)
        self.temporaryMode.hidden = (plate.mode != PlateUAConstants.PlateMode.Temporary)
    }
    
    func updateAutoType (plate : PlateUAProtocol)
    {
        let autoTypes = PlateUAUtils.autoTypesForPlateType(plate.type)
        
        self.motoType.hidden = !autoTypes.contains(PlateUAConstants.AutoTypes.Moto)
        self.carType.hidden = !autoTypes.contains(PlateUAConstants.AutoTypes.Car)
        self.busType.hidden = !autoTypes.contains(PlateUAConstants.AutoTypes.Bus)
        self.trackType.hidden = !autoTypes.contains(PlateUAConstants.AutoTypes.Track)
        self.tracktorType.hidden = !autoTypes.contains(PlateUAConstants.AutoTypes.Tracktor)
        self.trailerType.hidden = !autoTypes.contains(PlateUAConstants.AutoTypes.Trailer)
    }
    
    func updateOwnType (plate : PlateUAProtocol)
    {
        self.mountainOwnType.hidden = (plate.ownType != PlateUAConstants.PlateOwnType.Mountain)
        self.armyOwnType.hidden = (plate.ownType != PlateUAConstants.PlateOwnType.Army)
        self.armyVolontierOwnType.hidden = (plate.ownType != PlateUAConstants.PlateOwnType.ArmyVolontier)
        self.diplomaticOwnType.hidden = (plate.ownType != PlateUAConstants.PlateOwnType.Diplomatic)
        self.miliciaOwnType.hidden = (plate.ownType != PlateUAConstants.PlateOwnType.Milicia)
        self.tradeDialerOwnType.hidden = (plate.ownType != PlateUAConstants.PlateOwnType.TradeDialer)
    }
    
    func updateCountryType (plate : PlateUAProtocol)
    {
        let regularCountry = (plate.countryType != PlateUAConstants.PlateCountryType.JapanUSA)
        
        self.usaJapanCountryType.hidden = regularCountry
        
    }
    
    func updateEngineType (plate : PlateUAProtocol)
    {
        self.engineLess50Type.hidden = (plate.engineType != PlateUAConstants.PlateEngineType.LessThen50)
    }
    
    func updateWithPlate (plate : PlateUAProtocol)
    {
        self.flag.image = UIImage(named: plate.back)
        
        let textColor = self.dynamicType.textColorForPlate(plate)
        
        self.prePlate.textColor = textColor
        self.plate.textColor = textColor
        self.postPlate.textColor = textColor

        self.plate.text = plate.body
        self.prePlate.text = plate.prefix
        self.postPlate.text = plate.suffix
        
        if let year = plate.year
        {
            self.year.text  = year
        }
        if let area = plate.area
        {
            self.desc.text  = area
        }
        
        self.updateMode(plate)
        self.updateOwnType(plate)
        self.updateAutoType(plate)
        self.updateCountryType(plate)
        self.updateEngineType(plate)
    }
    
    static func textColorForPlate (plate : PlateProtocol) -> UIColor
    {
        var result = UIColor.blackColor()
        if (
               plate is PlateUAAutoTemporary04
            || plate is PlateUAAutoTemporary15
            || plate is PlateUAAutoTemporaryDealer04
            || plate is PlateUAAutoTemporaryDealer15
            || plate is PlateUAMotoTemporary04
            || plate is PlateUAMotoTemporaryDealer04
            || plate is PlateUAMotorcycleTemporary04
            || plate is PlateUAMotorcycleTemporaryDealer04
            || plate is PlateUAAutoPolice04
            || plate is PlateUAAutoPolice15
            )
        {
            result = UIColor.whiteColor()
        }

        return result
    }
}
