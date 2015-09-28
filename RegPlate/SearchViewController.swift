//
//  SearchViewController.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/18/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import UIKit
import CoreData

enum SearchViewControllerMode : Int
{
    case UAPlates = 0, UserSavedPlates
}

class SearchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate
{
    let uaPlates = SearchUAPlatesDataSource()
    let userPlates = UserUAPlatesDataSource()
    
    var currentPlates : UAPlatesDataSource
    
    @IBOutlet
    var tableView : UITableView!
    
    @IBOutlet
    var segmented : UISegmentedControl!
    
    var selected : NSIndexPath?
    
    func isSearchUAPlatesMode() -> Bool
    {
        return (segmented.selectedSegmentIndex == SearchViewControllerMode.UAPlates.rawValue)
    }
    
    required init(coder aDecoder: NSCoder)
    {
        currentPlates = uaPlates
        
        super.init(coder : aDecoder)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        PlateUAUIUtils.registerUAPlateCells(self.tableView)
        
        // Do any additional setup after loading the view, typically from a nib.
        let insets = UIEdgeInsetsMake(0, 0, 216, 0);
        
        self.tableView.contentInset = insets
    }

    
    @IBAction func didChangedMode(sender: AnyObject)
    {
        if isSearchUAPlatesMode()
        {
            currentPlates = uaPlates
        }
        else
        {
            currentPlates = userPlates
        }
        
        self.tableView.reloadData()
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

    // table delegate
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell = currentPlates.tableView(tableView, cellForRowAtIndexPath: indexPath)
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        var result = currentPlates.tableView(tableView, numberOfRowsInSection: section)
        
        return result
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        if (isSearchUAPlatesMode())
        {
            let plate = currentPlates.plates[indexPath.row] as? PlateUAProtocol
            
            if (plate!.unique)
            {
                self.performSegueWithIdentifier("show", sender: indexPath)
                
            }
        }
        else
        {
        }
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
    }
    
    override func prefersStatusBarHidden() -> Bool
    {
        return false;
    }
    
    // table search delegate
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String)
    {
        currentPlates.filter(searchText)
        
        tableView.reloadData()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if (isSearchUAPlatesMode())
        {
            if (segue.identifier == "show")
            {
                let controller: PlateDetailsViewController = segue.destinationViewController as! PlateDetailsViewController
                let indexPath = sender as! NSIndexPath
                
                controller.plate = currentPlates.plates[indexPath.row] as? PlateUAProtocol
            }
        }
    }
}

