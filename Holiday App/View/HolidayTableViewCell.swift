//
//  HolidayTableViewCell.swift
//  Holiday App
//
//  Created by Vishweshwaran on 07/09/20.
//  Copyright © 2020 Dynamic Dudes. All rights reserved.
//

import UIKit

class HolidayTableViewCell: UITableViewCell {
    
    @IBOutlet var myHoliday : UILabel!
    @IBOutlet var myHolidayDescription : UILabel!
    
    static let identifier : String = "HolidayTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    static func uiNib() -> UINib{
        return UINib(nibName: "HolidayTableViewCell", bundle: nil)
    }
    
}
