//
//  RegExp.swift
//  RegPlate
//
//  Created by Andriy Morgunov on 8/20/15.
//  Copyright (c) 2015 Andriy Morgunov. All rights reserved.
//

import Foundation

class RegExp
{
    let internalExpression : NSRegularExpression?
    let pattern            : String
    
    init(_ pattern: String)
    {
        self.pattern = pattern
        
        var error: NSError?
        
        self.internalExpression = NSRegularExpression(pattern: pattern, options: .CaseInsensitive, error: &error)
    }
    
    func test(input: String) -> Bool
    {
        var result : Bool = false
        
        if let exp = self.internalExpression
        {
            let matches = exp.matchesInString(input, options: nil, range:NSMakeRange(0, count(input)))
            
            return matches.count > 0
        }
        
        return result
    }
}