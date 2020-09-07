//
//  ViewController.swift
//  Holiday App
//
//  Created by Vishweshwaran on 23/08/20.
//  Copyright © 2020 Dynamic Dudes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView : UITableView!
    
    var holidayManager = HolidayManager()
    
    var holidayArray : [Holidays] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let aFunction = {(fetchedData : HolidayData) in
            DispatchQueue.main.async {
                self.holidayArray = fetchedData.response.holidays
                self.tableView.reloadData()
            }
            
        }
        
        holidayManager.fetchData(onCompletion: aFunction)
        tableView.register(HolidayTableViewCell.uiNib(), forCellReuseIdentifier: HolidayTableViewCell.identifier)
        tableView.estimatedRowHeight = 20
        tableView.rowHeight = UITableView.automaticDimension
        
        
    }
    
}

extension ViewController : UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return holidayArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return UITableView.automaticDimension
        } else {
            return 70
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return UITableView.automaticDimension
        } else {
            return 70
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: HolidayTableViewCell.identifier, for: indexPath) as! HolidayTableViewCell
        
        cell.myHoliday.text = holidayArray[indexPath.row].name
        cell.myHolidayDescription.text = holidayArray[indexPath.row].description
        
        
        
        return cell
        
    }
    
    
}
