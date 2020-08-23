//
//  ViewController.swift
//  Holiday App
//
//  Created by Vishweshwaran on 23/08/20.
//  Copyright © 2020 Dynamic Dudes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var holidayManager = HolidayManager()
    let countryName = "IN"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        holidayManager.getDataFromServer(from: countryName)

    }
    

}
