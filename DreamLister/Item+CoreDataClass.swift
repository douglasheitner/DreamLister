//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by Douglas Heitner on 2/22/17.
//  Copyright © 2017 Douglas Heitner. All rights reserved.
//

import Foundation
import CoreData

@objc(Item)
public class Item: NSManagedObject {
    
    public override func awakeFromInsert() {
    
        super.awakeFromInsert()
        
        self.created = NSDate()
        
    }
}
