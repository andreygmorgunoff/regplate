//
//  SearchPlateCell.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/18/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import UIKit

class SearchPlateCell : UITableViewCell {
    
    @IBOutlet
    var flag:UIImageView!
    
    @IBOutlet
    var plate:UILabel!

    @IBOutlet
    var prePlate:UILabel!
    
    @IBOutlet
    var postPlate:UILabel!
    
    @IBOutlet
    var desc:UILabel!
    
    @IBOutlet
    var year:UILabel!

    @IBOutlet
    var bikeType:UIImageView!
    @IBOutlet
    var motoType:UIImageView!
    @IBOutlet
    var carType:UIImageView!
    @IBOutlet
    var trackType:UIImageView!
    @IBOutlet
    var busType:UIImageView!
    @IBOutlet
    var tracktorType:UIImageView!
    @IBOutlet
    var trailerType:UIImageView!
    
    @IBOutlet
    var taxiMode:UIImageView!
    @IBOutlet
    var temporaryMode:UIImageView!
    
    @IBOutlet
    var usaJapanCountryType:UIImageView!
    
    @IBOutlet
    var miliciaOwnType:UIImageView!
    @IBOutlet
    var armyOwnType:UIImageView!
    @IBOutlet
    var armyVolontierOwnType:UIImageView!
    @IBOutlet
    var tradeDialerOwnType:UIImageView!
    @IBOutlet
    var mountainOwnType:UIImageView!
    @IBOutlet
    var diplomaticOwnType:UIImageView!

    @IBOutlet
    var engineLess50Type:UIImageView!
    
    override func prepareForReuse() {

        super.prepareForReuse()
        
        desc.text = ""
        year.text = ""
        plate.text = ""
        flag.image = nil
        
        taxiMode.hidden = true
        temporaryMode.hidden = true

        usaJapanCountryType.hidden = true
        
        miliciaOwnType.hidden = true
        armyOwnType.hidden = true
        armyVolontierOwnType.hidden = true
        tradeDialerOwnType.hidden = true
        mountainOwnType.hidden = true
        diplomaticOwnType.hidden = true
        
        engineLess50Type.hidden = true
    }
}