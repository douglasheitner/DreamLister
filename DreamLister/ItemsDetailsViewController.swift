//
//  ItemsDetailsViewController.swift
//  DreamLister
//
//  Created by Douglas Heitner on 2/28/17.
//  Copyright © 2017 Douglas Heitner. All rights reserved.
//

import UIKit

class ItemsDetailsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var storePicker: UIPickerView!
    @IBOutlet weak var titleField: CustomTextField!
    @IBOutlet weak var priceField: CustomTextField!
    @IBOutlet weak var detailsField: CustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let topItem = self.navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        
        storePicker.dataSource = self
        storePicker.delegate = self
        
        }
        
        // Do any additional setup after loading the view.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 0
    }
}
