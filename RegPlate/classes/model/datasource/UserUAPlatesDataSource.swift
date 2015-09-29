//
//  UserUAPlatesDataSource.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 9/28/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class UserUAPlatesDataSource : UAPlatesDataSource
{
    override init()
    {
        super.init()
        
        updatePlates()
    }
    
    lazy var context : NSManagedObjectContext =
    {
        let appDelegate =
        UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext!
        
        return managedContext
    }()
    
    lazy var storedUserPlates: NSFetchedResultsController =
    {
        let fetchRequest = NSFetchRequest(entityName: "TPlate")
        let sortDescriptor = NSSortDescriptor(key: "code", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        let result = NSFetchedResultsController(
            fetchRequest: fetchRequest,
            managedObjectContext: self.context,
            sectionNameKeyPath: nil,
            cacheName: nil)
        
        //        result.delegate = self
        
        var e: NSError?
        if !result.performFetch(&e)
        {
            println("fetch error: \(e!.localizedDescription)")
            //            abort();
        }
        
        return result
    }()
    
    func updatePlates()
    {
        self.plates.removeAll(keepCapacity: true)
        
        if let stored = storedUserPlates.fetchedObjects
        {
            for object in stored
            {
                if (object is TPlate)
                {
                    let storedPlate = object as! TPlate
                    
                    let auto = PlateUAAuto04(input: storedPlate.plate)
                    
                    self.plates.append(auto)
                }
            }
        }
    }
    
    override func filter(pattern : String)
    {
        updatePlates()
    }
    
    func hasPlate(plate : PlateProtocol) -> Bool
    {
        var result = false
        
        for item : PlateProtocol in self.plates
        {
            if (item.isEqualTo(plate))
            {
                result = true
                break
            }
        }
        
        return result
    }
}
