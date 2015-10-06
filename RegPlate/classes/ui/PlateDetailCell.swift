//
//  PlateDetailCell.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 10/6/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import UIKit

class PlateDetailCell: UITableViewCell, UITextFieldDelegate
{
    @IBOutlet
    var nameLabel:UILabel!
    
    @IBOutlet
    var descTextField:UITextField!
    
    var item:PlateDetailCellItem?
    {
        didSet
        {
            nameLabel.text = item!.label
            descTextField.text = item!.text
        }
    }
    
    required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        
        return false
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool
    {
        if item != nil
        {
            item?.text = textField.text
        }
        
        return true
    }
}