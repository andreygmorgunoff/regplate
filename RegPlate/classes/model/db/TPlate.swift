//
//  TPlate.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 9/24/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation
import CoreData

class TPlate: NSManagedObject {

    @NSManaged var code: String
    @NSManaged var plate: String
}
