//
//  PlateUAUIUtils.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 9/10/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation
import UIKit

struct PlateUAUIUtils
{
    static func registerUAPlateCells(tableView : UITableView)
    {
        tableView.registerNib(UINib(nibName: "PlateCellType1", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier")
        tableView.registerNib(UINib(nibName: "PlateCellType2", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier2")
        tableView.registerNib(UINib(nibName: "PlateCellType3", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier3")
        tableView.registerNib(UINib(nibName: "PlateCellType4", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier4")
        tableView.registerNib(UINib(nibName: "PlateCellType5", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier5")
        tableView.registerNib(UINib(nibName: "PlateCellType6", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier6")
        tableView.registerNib(UINib(nibName: "PlateCellType7", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier7")
        tableView.registerNib(UINib(nibName: "PlateCellType8", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier8")
        tableView.registerNib(UINib(nibName: "PlateCellType9", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier9")
        tableView.registerNib(UINib(nibName: "PlateCellType10", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier10")
        tableView.registerNib(UINib(nibName: "PlateCellType11", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier11")
        tableView.registerNib(UINib(nibName: "PlateCellType12", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier12")
        tableView.registerNib(UINib(nibName: "PlateCellType13", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier13")
        tableView.registerNib(UINib(nibName: "PlateCellType14", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier14")
        tableView.registerNib(UINib(nibName: "PlateCellType15", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier15")
        tableView.registerNib(UINib(nibName: "PlateCellType16", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier16")
    }
    
    static func cellIdentifierWithPlate(plate : PlateProtocol) -> String
    {
        var cellIdentifier = "searchPlateCellIdentifier"

        if (plate is PlateUAStaff10)
        {
            cellIdentifier = "searchPlateCellIdentifier16"
        }
        else if (plate is PlateUAAutoArmyVolonter14)
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
            || plate is PlateUAMotoTemporaryDealer04
            || plate is PlateUAStaffTemporary15)
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
