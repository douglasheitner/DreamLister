//
//  Item+CoreDataProperties.swift
//  DreamLister
//
//  Created by Douglas Heitner on 2/22/17.
//  Copyright © 2017 Douglas Heitner. All rights reserved.
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item");
    }

    @NSManaged public var created: NSDate?
    @NSManaged public var details: String?
    @NSManaged public var price: Double
    @NSManaged public var title: String?
    @NSManaged public var toImage: Image?
    @NSManaged public var toItemsType: ItemType?
    @NSManaged public var toStore: Store?

}
