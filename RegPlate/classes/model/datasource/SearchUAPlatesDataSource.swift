//
//  SearchUAPlatesDataSource.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 9/28/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

class SearchUAPlatesDataSource : UAPlatesDataSource
{
    override func filter(pattern : String)
    {
        self.plates = PlateUAUtils.plates(pattern)
    }
}
