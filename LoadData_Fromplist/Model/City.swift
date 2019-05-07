//
//  City.swift
//  LoadData_Fromplist
//
//  Created by Just Kidding on 4/17/19.
//  Copyright © 2019 Just Kidding. All rights reserved.
//

import Foundation

protocol Place {
    var name: String {get set}
}

class City: NSObject, Place {
    var cityCode: Int
    var name: String
    
    init?(dictionary: JSON) {
        guard let cityCode = dictionary["CityCode"] as? Int else { return nil }
        guard let name = dictionary["Name"] as? String else { return nil }
        self.cityCode = cityCode
        self.name = name
    }
}
