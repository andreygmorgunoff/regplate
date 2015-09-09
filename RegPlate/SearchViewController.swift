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

            var cellIdentifier = "searchPlateCellIdentifier"
            if (plate is PlateUAAutoUsaJapan04)
            {
                cellIdentifier = "searchPlateCellIdentifier5"
            }
            else if (plate is PlateUAMotorcycle04
                || plate is PlateUAMotorcycleTemporary04
                || plate is PlateUAMotorcycleTemporaryDealer04)
            {
                cellIdentifier = "searchPlateCellIdentifier4"
            }
            else if (plate is PlateUAMoto04
                || plate is PlateUAMotoTemporary04
                || plate is PlateUAMotoTemporaryDealer04)
            {
                cellIdentifier = "searchPlateCellIdentifier3"
            }
            else if (plate is PlateUAAutoTemporary04)
            {
                cellIdentifier = "searchPlateCellIdentifier2"
            }
            
            let uaCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! SearchPlateCell
            
            uaCell.flag.image = UIImage(named: plate.back)
            
            if (plate is PlateUAMoto04
                || plate is PlateUAMotoTemporary04
                || plate is PlateUAMotoTemporaryDealer04
                || plate is PlateUAMotorcycle04
                || plate is PlateUAMotorcycleTemporary04
                || plate is PlateUAMotorcycleTemporaryDealer04
                || plate is PlateUAAutoUsaJapan04
                || plate is PlateUAAutoUsaJapan15
                )
            {
                if let tempPlate = plate as? PlateUA
                {
                    uaCell.plate.text = tempPlate.body
                    uaCell.prePlate.text = tempPlate.prefix
                    uaCell.postPlate.text = tempPlate.suffix
                }
                
                if (plate is PlateUAMotoTemporary04
                    || plate is PlateUAMotoTemporaryDealer04)
                {
                    uaCell.prePlate.textColor = UIColor.whiteColor()
                    uaCell.plate.textColor = UIColor.whiteColor()
                    uaCell.postPlate.textColor = UIColor.whiteColor()
                }
                else
                {
                    uaCell.prePlate.textColor = UIColor.blackColor()
                    uaCell.plate.textColor = UIColor.blackColor()
                    uaCell.postPlate.textColor = UIColor.blackColor()
                }
            }
            else if (plate is PlateUAAutoTemporary04)
            {
                if let tempPlate = plate as? PlateUA
                {
                    uaCell.plate.text = tempPlate.suffix
                    uaCell.prePlate.text = tempPlate.prefix
                }
            }
            else
            {
                uaCell.plate.text = plate.body
            }
            
            if let year = plate.year
            {
                uaCell.year.text  = year
            }
            if let area = plate.area
            {
                uaCell.desc.text  = area
            }
            
            uaCell.taxiMode.hidden = (plate.mode != PlateUAConstants.PlateMode.Taxi)
            uaCell.temporaryMode.hidden = (plate.mode != PlateUAConstants.PlateMode.Temporary)
            
            uaCell.mountainOwnType.hidden = (plate.ownType != PlateUAConstants.PlateOwnType.Mountain)
            uaCell.armyOwnType.hidden = (plate.ownType != PlateUAConstants.PlateOwnType.Army)
            uaCell.armyVolontierOwnType.hidden = (plate.ownType != PlateUAConstants.PlateOwnType.ArmyVolontier)
            uaCell.diplomaticOwnType.hidden = (plate.ownType != PlateUAConstants.PlateOwnType.Diplomatic)
            uaCell.miliciaOwnType.hidden = (plate.ownType != PlateUAConstants.PlateOwnType.Milicia)
            uaCell.tradeDialerOwnType.hidden = (plate.ownType != PlateUAConstants.PlateOwnType.TradeDialer)
            
            let autoTypes = PlateUAUtils.autoTypesForPlateType(plate.type)
            
            uaCell.motoType.hidden = !autoTypes.contains(PlateUAConstants.AutoTypes.Moto)
            uaCell.carType.hidden = !autoTypes.contains(PlateUAConstants.AutoTypes.Car)
            uaCell.busType.hidden = !autoTypes.contains(PlateUAConstants.AutoTypes.Bus)
            uaCell.trackType.hidden = !autoTypes.contains(PlateUAConstants.AutoTypes.Track)
            uaCell.tracktorType.hidden = !autoTypes.contains(PlateUAConstants.AutoTypes.Tracktor)
            uaCell.trailerType.hidden = !autoTypes.contains(PlateUAConstants.AutoTypes.Trailer)
            
            let regularCountry = (plate.countryType != PlateUAConstants.PlateCountryType.JapanUSA)
            
            uaCell.usaJapanCountryType.hidden = regularCountry
            
            uaCell.engineLess50Type.hidden = (plate.engineType != PlateUAConstants.PlateEngineType.LessThen50)
            
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

