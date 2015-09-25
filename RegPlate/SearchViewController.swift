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
//    var plates : [PlateProtocol] = []
    
    let uaPlates = UAPlatesDataSource()
    
    @IBOutlet
    var tableView : UITableView!
    
    @IBOutlet
    var segmented : UISegmentedControl!
    
    var selected : NSIndexPath?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.tableView.registerNib(UINib(nibName: "PlateCellType1", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier")
        self.tableView.registerNib(UINib(nibName: "PlateCellType2", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier2")
        self.tableView.registerNib(UINib(nibName: "PlateCellType3", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier3")
        self.tableView.registerNib(UINib(nibName: "PlateCellType4", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier4")
        self.tableView.registerNib(UINib(nibName: "PlateCellType5", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier5")
        self.tableView.registerNib(UINib(nibName: "PlateCellType6", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier6")
        self.tableView.registerNib(UINib(nibName: "PlateCellType7", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier7")
        self.tableView.registerNib(UINib(nibName: "PlateCellType8", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier8")
        self.tableView.registerNib(UINib(nibName: "PlateCellType9", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier9")
        self.tableView.registerNib(UINib(nibName: "PlateCellType10", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier10")
        self.tableView.registerNib(UINib(nibName: "PlateCellType11", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier11")
        self.tableView.registerNib(UINib(nibName: "PlateCellType12", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier12")
        self.tableView.registerNib(UINib(nibName: "PlateCellType13", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier13")
        self.tableView.registerNib(UINib(nibName: "PlateCellType14", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier14")
        self.tableView.registerNib(UINib(nibName: "PlateCellType15", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier15")
        self.tableView.registerNib(UINib(nibName: "PlateCellType16", bundle: nil), forCellReuseIdentifier: "searchPlateCellIdentifier16")
        
        // Do any additional setup after loading the view, typically from a nib.
        let insets = UIEdgeInsetsMake(0, 0, 216, 0);
        
        self.tableView.contentInset = insets
    }

    @IBAction func didChangedMode(sender: AnyObject)
    {
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
        var cell:UITableViewCell = UITableViewCell()
        
        if (segmented.selectedSegmentIndex == 0)
        {
            cell = uaPlates.tableView(tableView, cellForRowAtIndexPath: indexPath)
        }
        else
        {
            // TODO:
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        var result = 0
        
        if (segmented.selectedSegmentIndex == 0)
        {
            result = uaPlates.tableView(tableView, numberOfRowsInSection: section)
        }
        else
        {
            // TODO:
        }
        
        return result
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        if (segmented.selectedSegmentIndex == 0)
        {
            let plate = uaPlates.plates[indexPath.row] as? PlateUAProtocol
            
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
        if (segmented.selectedSegmentIndex == 0)
        {
            uaPlates.plates = PlateUAUtils.plates(searchText);
        }
        else
        {
        }
        
        tableView.reloadData()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if (segmented.selectedSegmentIndex == 0)
        {
            if (segue.identifier == "show")
            {
                let controller: PlateDetailsViewController = segue.destinationViewController as! PlateDetailsViewController
                let indexPath = sender as! NSIndexPath
                
                controller.plate = uaPlates.plates[indexPath.row] as? PlateUAProtocol
            }
        }
    }
}

