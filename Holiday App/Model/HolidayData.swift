//
//  HolidayData.swift
//  Holiday App
//
//  Created by Vishweshwaran on 23/08/20.
//  Copyright © 2020 Dynamic Dudes. All rights reserved.
//

import Foundation


struct HolidayData : Decodable{
    let response : Response
}

struct Response : Decodable{
    let holidays : [Holidays]
}

struct Holidays : Decodable {
    let name : String
    let description : String
    let date : Date
}

struct Date : Decodable{
    let iso : String
}
