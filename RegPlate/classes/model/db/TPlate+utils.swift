//
//  TPlate+utils.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 10/2/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

extension TPlate
{
    func uaPlate() -> PlateUAProtocol?
    {
        var result : PlateUAProtocol?
        
        result = PlateUAUtils.convertPlate(self)
        
        return result
    }
}