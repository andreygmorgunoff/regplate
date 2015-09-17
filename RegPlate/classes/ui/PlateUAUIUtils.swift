//
//  PlateUAUIUtils.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 9/10/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

struct PlateUAUIUtils
{
    static func cellIdentifierWithPlate(plate : PlateProtocol) -> String
    {
        var cellIdentifier = "searchPlateCellIdentifier"

        if (plate is PlateUAAutoArmyVolonter14)
        {
            cellIdentifier = "searchPlateCellIdentifier15"
        }
        else if (plate is PlateUAAutoTracktorTemporary13)
        {
            cellIdentifier = "searchPlateCellIdentifier14"
        }
        else if (plate is PlateUAAutoPoliceHead15)
        {
            cellIdentifier = "searchPlateCellIdentifier13"
        }
        else if (plate is PlateUAAutoArmyHead07)
        {
            cellIdentifier = "searchPlateCellIdentifier12"
        }
        else if (plate is PlateUAAutoTracktor95)
        {
            cellIdentifier = "searchPlateCellIdentifier11"
        }
        else if (plate is PlateUAAutoArmyMoto95)
        {
            cellIdentifier = "searchPlateCellIdentifier10"
        }
        else if (plate is PlateUAAutoArmy95)
        {
            cellIdentifier = "searchPlateCellIdentifier9"
        }
        else if (plate is PlateUAAutoDiplomatic13_CDP)
        {
            cellIdentifier = "searchPlateCellIdentifier8"
        }
        else if (plate is PlateUAAutoDiplomatic04_13
            || plate is PlateUAAutoDiplomatic13_S
            || plate is PlateUAAutoDiplomatic13_DP)
        {
            cellIdentifier = "searchPlateCellIdentifier7"
        }
        else if (plate is PlateUAAutoPolice04
            || plate is PlateUAAutoPolice15)
        {
            cellIdentifier = "searchPlateCellIdentifier6"
        }
        else if (plate is PlateUAAutoUsaJapan04)
        {
            cellIdentifier = "searchPlateCellIdentifier5"
        }
        else if (plate is PlateUAMotorcycle04
            || plate is PlateUAMotorcycleTemporary04
            || plate is PlateUAMotorcycleTemporaryDealer04)
        {
            cellIdentifier = "searchPlateCellIdentifier4"
        }
        else if (plate is PlateUAMoto04
            || plate is PlateUAMotoTemporary04
            || plate is PlateUAMotoTemporaryDealer04)
        {
            cellIdentifier = "searchPlateCellIdentifier3"
        }
        else if (plate is PlateUAAutoTemporary04)
        {
            cellIdentifier = "searchPlateCellIdentifier2"
        }
        
        return cellIdentifier
    }
}
