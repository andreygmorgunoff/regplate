//
//  UAPlatesDataSource.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 9/25/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation
import UIKit

protocol PlatesDataSourceProtocol : UITableViewDataSource, UITableViewDelegate
{
    func filter(pattern : String)
}

class UAPlatesDataSource : NSObject, PlatesDataSourceProtocol
{
    var plates : [PlateProtocol] = []
    
    // table delegate
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell
        
        if (indexPath.row < self.plates.count)
        {
            let plate = plates[indexPath.row] as! PlateUAProtocol
            
            let cellIdentifier = PlateUAUIUtils.cellIdentifierWithPlate(plate)
            
            let uaCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! SearchPlateCell
            
            uaCell.updateWithPlate(plate)
            cell = uaCell
        }
        else
        {
            cell = UITableViewCell()
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return plates.count
    }
    
    func filter(pattern : String)
    {
        // TODO:should be override with child
    }
}