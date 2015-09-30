//
//  PlateDetailsViewController.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 9/23/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import UIKit
import CoreData

class PlateDetailsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet
    var tableView : UITableView!
    
    @IBOutlet
    var saveButton : UIButton!

    @IBOutlet
    var unsaveButton : UIButton!

    var plate : PlateUAProtocol?
    
    var plates : UAPlatesDataSource?
    
    var userPlates : UserUAPlatesDataSource?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        plates = UAPlatesDataSource()
        plates!.plates.append(plate!)
        
        userPlates = UserUAPlatesDataSource()
        
        PlateUAUIUtils.registerUAPlateCells(self.tableView)
        
        if userPlates?.getPlate(plate!) != nil
        {
            saveButton.hidden = true
        }
        else
        {
            saveButton.hidden = false
        }
        unsaveButton.hidden = !saveButton.hidden
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func handleSerialization(sender: UIButton)
    {
        if sender === saveButton
        {
            save()
        }
        else
        {
            unsave()
        }
    }
    
    func save()
    {
        userPlates?.savePlate(plate!)

        saveButton.hidden = true
        unsaveButton.hidden = !saveButton.hidden
    }

    func unsave()
    {
        userPlates?.unsavePlate(plate!)
        
        saveButton.hidden = false
        unsaveButton.hidden = !saveButton.hidden
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // table delegate
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell:UITableViewCell = UITableViewCell()
        
        cell = plates!.tableView(tableView, cellForRowAtIndexPath: indexPath)
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        var result = 0
        
        result = plates!.tableView(tableView, numberOfRowsInSection: section)
        
        return result
    }
}
