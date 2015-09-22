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
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let insets = UIEdgeInsetsMake(0, 0, 216, 0);
        
        self.tableView.contentInset = insets
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        
        return false;
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String)
    {
        plates = PlateUAUtils.plates(searchText);
        
        tableView.reloadData()
    }
}

