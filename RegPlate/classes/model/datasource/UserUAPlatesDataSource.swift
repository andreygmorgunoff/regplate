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
    
    func storedUserPlates() -> NSFetchedResultsController
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
    }
    
    func updatePlates()
    {
        self.plates.removeAll(keepCapacity: true)
        
        if let stored = storedUserPlates().fetchedObjects
        {
            for object in stored
            {
                if (object is TPlate)
                {
                    let storedPlate = object as! TPlate
                    
                    if let auto = storedPlate.uaPlate()
                    {
                        self.plates.append(auto)
                    }
                }
            }
        }
    }
    
    override func filter(pattern : String)
    {
        updatePlates()
    }
    
    func hasPlate(plate : PlateUAProtocol) -> Bool
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
    
    func getPlate(plate : PlateUAProtocol) -> TPlate?
    {
        var result : TPlate?
        
        let entity =  NSEntityDescription.entityForName("TPlate",
            inManagedObjectContext:
            self.context)
        
        let fetchPredicate = NSPredicate(format: "code = %@ AND plate = %@", argumentArray: [plate.type, plate.value!])
        
        let fetchRequest = NSFetchRequest(entityName: "TPlate")
        fetchRequest.predicate = fetchPredicate
        
        if let fetchResults = self.context.executeFetchRequest(fetchRequest, error: nil) as? [TPlate]
        {
            if fetchResults.count > 0
            {
                result = fetchResults[0]
            }
        }

        return result
    }
    
    func savePlate(plate : PlateUAProtocol) -> Bool
    {
        var result = false
        
        let entity =  NSEntityDescription.entityForName("TPlate",
            inManagedObjectContext:
            self.context)
        
        let dbPlate = TPlate(entity: entity!,
            insertIntoManagedObjectContext:self.context)
            
        //3
        if let _value = plate.value
        {
            dbPlate.plate = _value
            dbPlate.code  = plate.type
        }
        
        //4
        var error: NSError?
        if !self.context.save(&error)
        {
            println("Could not save \(error), \(error?.userInfo)")
        }
        else
        {
            self.plates.append(plate)
            result = true
        }
        
        return result
    }
    
    func unsavePlate(plate : PlateUAProtocol) -> Bool
    {
        var result = false
        
        if let dbPlate = getPlate(plate)
        {
            self.context.deleteObject(dbPlate)
            self.plates = self.plates.filter({ (obj) -> Bool in

                var result = false
                
                let item : PlateUAProtocol = obj as! PlateUAProtocol
                
                if item.type == plate.type && item.value == plate.value
                {
                    result = true
                }
                
                return result
            })

            
            result = true
        }
        
        return result
    }
}
