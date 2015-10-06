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
    var plateTableView : UITableView!

    @IBOutlet
    var detailsTableView : UITableView!
    
    @IBOutlet
    var saveButton : UIButton!

    @IBOutlet
    var unsaveButton : UIButton!

    var plate : PlateUAProtocol?
    
    var plates : UAPlatesDataSource?
    
    var userPlates : UserUAPlatesDataSource?
    
    var items = [PlateDetailCellItem]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        plates = UAPlatesDataSource()
        plates!.plates.append(plate!)
        
        userPlates = UserUAPlatesDataSource()
        
        PlateUAUIUtils.registerUAPlateCells(self.plateTableView)
        
        if userPlates?.getPlate(plate!) != nil
        {
            saveButton.hidden = true
        }
        else
        {
            saveButton.hidden = false
        }
        unsaveButton.hidden = !saveButton.hidden
        
        // 1
        detailsTableView.registerClass(PlateDetailCell.self, forCellReuseIdentifier: "DetailsTableViewCell")
        detailsTableView.registerNib(UINib(nibName: "PlateDetailItemCell", bundle: nil), forCellReuseIdentifier: "DetailsTableViewCell")
        
        // 2
        items += [PlateDetailCellItem(label: "towel:", text: "towel"),
                  PlateDetailCellItem(label: "sheets:", text: "sheets"),
                  PlateDetailCellItem(label: "soap:", text: "soap"),
                  PlateDetailCellItem(label: "shampoo:", text: "shampoo")]
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
        
        if (tableView == plateTableView)
        {
            cell = plates!.tableView(tableView, cellForRowAtIndexPath: indexPath)
        }
        else if (tableView == detailsTableView)
        {
            let detailsCell : PlateDetailCell = tableView.dequeueReusableCellWithIdentifier("DetailsTableViewCell", forIndexPath: indexPath) as! PlateDetailCell
            
            detailsCell.item = items[indexPath.row]
            
            cell = detailsCell
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        var result = 0
        
        if (tableView == plateTableView)
        {
            result = plates!.tableView(tableView, numberOfRowsInSection: section)
        }
        else if (tableView == detailsTableView)
        {
            result = items.count
        }
        
        return result
    }
}
