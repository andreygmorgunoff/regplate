//
//  SearchViewController.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/18/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate
{
    var plates : [PlateProtocol] = []
    
    @IBOutlet
    var tableView : UITableView!
    
    var selected : NSIndexPath?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.tableView.tableHeaderView = UIView(frame: CGRectMake(0, 0, 1, 1))
        
        // Do any additional setup after loading the view, typically from a nib.
        let insets = UIEdgeInsetsMake(0, 0, 216, 0);
        
        self.tableView.contentInset = insets
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool)
    {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

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

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let plate = plates[indexPath.row] as? PlateUAProtocol
        
        if (plate!.unique)
        {
            self.performSegueWithIdentifier("show", sender: indexPath)
            
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
        
    }
    
    override func prefersStatusBarHidden() -> Bool {
        
        return false;
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String)
    {
        plates = PlateUAUtils.plates(searchText);
        
        tableView.reloadData()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if (segue.identifier == "show")
        {
            let controller: PlateDetailsViewController = segue.destinationViewController as! PlateDetailsViewController
            let indexPath = sender as! NSIndexPath
            
            controller.plate = plates[indexPath.row] as? PlateUAProtocol
        }
    }
}

