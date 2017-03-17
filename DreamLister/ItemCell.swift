//
//  ItemCell.swift
//  DreamLister
//
//  Created by Douglas Heitner on 2/21/17.
//  Copyright © 2017 Douglas Heitner. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var details: UILabel!

    func configureCell(item: Item) {
        
        let number = item.price as NSNumber
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        
        title.text = item.title
        price.text = formatter.string(from: number)
        details.text = item.details
        thumb.image = item.toImage?.image as? UIImage
        
    }
}
