//
//  HolidayManager.swift
//  Holiday App
//
//  Created by Vishweshwaran on 23/08/20.
//  Copyright © 2020 Dynamic Dudes. All rights reserved.
//

import Foundation

struct HolidayManager {
    
    let baseUrl = "https://calendarific.com/api/v2/holidays"
    let apiKey = "358c5148be43c02b84ed8a656b46faa708285d06"
    
    func getDataFromServer(from countryName : String){
        let mainUrl = "\(baseUrl)/?&api_key=\(apiKey)&country=\(countryName)&year=2020"
        print(mainUrl)
        if let url = URL(string: mainUrl){
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    print(error!)
                }
                
                if let safeData = data{
                    let parsedData = self.parseJson(safeData)
                }
            }
            task.resume()
        }
    
    }
    
    func parseJson(_ holidayData : Data){
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(HolidayData.self, from: holidayData)
            let name = decodedData.response.holidays[0].name
            let description = decodedData.response.holidays[0].description
            let date = decodedData.response.holidays[0].date
            
            print(name)
            print(description)
            print(date)
         
        }
        catch{
            print(error)
        }
    }
    
    
}
