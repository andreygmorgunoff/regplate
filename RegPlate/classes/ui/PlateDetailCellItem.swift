//
//  PlateDetailCellItem.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 10/6/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import UIKit

class PlateDetailCellItem: NSObject
{
    var text: String
    var label : String
    
    init(label: String, text: String)
    {
        self.label = label
        self.text = text
    }
    
}