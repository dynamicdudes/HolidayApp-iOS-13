//
//  HolidayData.swift
//  Holiday App
//
//  Created by Vishweshwaran on 23/08/20.
//  Copyright © 2020 Dynamic Dudes. All rights reserved.
//

import Foundation


struct HolidayData : Codable{
    let response : Response
}

struct Response : Codable{
    let holidays : [Holidays]
}

struct Holidays : Codable {
    let name : String
    let description : String
    let date : Date
}

struct Date : Codable{
    let iso : String
}
