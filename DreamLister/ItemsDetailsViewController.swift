//
//  ItemsDetailsViewController.swift
//  DreamLister
//
//  Created by Douglas Heitner on 2/28/17.
//  Copyright © 2017 Douglas Heitner. All rights reserved.
//

import UIKit
import CoreData

class ItemsDetailsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var storePicker: UIPickerView!
    @IBOutlet weak var titleField: CustomTextField!
    @IBOutlet weak var priceField: CustomTextField!
    @IBOutlet weak var detailsField: CustomTextField!
    
    var stores = [Store]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let topItem = self.navigationController?.navigationBar.topItem {
            
            topItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }
        
        storePicker.dataSource = self
        storePicker.delegate = self
        
        
        let store0 = Store(context: context)
        store0.name = "Amazon"
        let store1 = Store(context: context)
        store1.name = "Apple"
        let store2 = Store(context: context)
        store2.name = "Bose"
        let store3 = Store(context: context)
        store3.name = "eBay"
        let store4 = Store(context: context)
        store4.name = "Best Buy"
        
        ad.saveContext()
        getStores()

    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        let store = stores[row]
        
        return store.name
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stores.count
    }
    
    func getStores () {
        let fetchRequest: NSFetchRequest<Store> = Store.fetchRequest()
        do {
            self.stores = try context.fetch(fetchRequest)
            self.storePicker.reloadAllComponents()
        } catch {
            // Handle Error
        }
    }
}
