//
//  HolidayManager.swift
//  Holiday App
//
//  Created by Vishweshwaran on 23/08/20.
//  Copyright © 2020 Dynamic Dudes. All rights reserved.
//

import Foundation

struct HolidayManager {
    
    func fetchData(onCompletion : @escaping (HolidayData) -> Void){
        
        let mainURL = "\(Constants.BASE_URL)?api_key=\(Constants.API_KEY)&country=IN&year=2020"
        
        guard let url = URL(string: mainURL) else{
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            
            if let error = error{
                print(error.localizedDescription)
                return
            }
            
            guard let safeData = data else{
                return
            }
            
            let decoder = JSONDecoder()
            
            do{
                let decodedData = try decoder.decode(HolidayData.self, from: safeData)
                onCompletion(decodedData)
            }
            catch{
                print(error.localizedDescription)
            }
            
            
            
            
            
        }.resume()
        
        
    }
    
    
}
