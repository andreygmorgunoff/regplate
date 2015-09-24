//
//  PlateDetailsViewController.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 9/23/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import UIKit
import CoreData

class PlateDetailsViewController: UIViewController
{
    var plate : PlateUAProtocol?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(sender: UIButton)
    {
        //1
        let appDelegate =
        UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext!
        
        //2
        let entity =  NSEntityDescription.entityForName("TPlate",
            inManagedObjectContext:
            managedContext)
        
        let dbPlate = TPlate(entity: entity!,
            insertIntoManagedObjectContext:managedContext)
        
        //3
        if let _plate = plate
        {
            if let _value = _plate.value
            {
                dbPlate.plate = _value
                dbPlate.code  = _plate.type.rawValue
            }
        }
        
        //4
        var error: NSError?
        if !managedContext.save(&error) {
            println("Could not save \(error), \(error?.userInfo)")
        }
        
        //5
//        people.append(person)
        
        self.navigationController?.popViewControllerAnimated(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
