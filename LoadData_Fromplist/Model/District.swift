//
//  District.swift
//  LoadData_Fromplist
//
//  Created by Just Kidding on 4/17/19.
//  Copyright © 2019 Just Kidding. All rights reserved.
//

import Foundation

class District: NSObject, Place {
    var cityCode: Int
    var dictrictCode: Int
    var name: String
    
    init?(dictionary: JSON) {
        guard let citiCode = dictionary["CityCode"] as? Int else {return nil}
        guard let districtCode = dictionary["DistrictCode"] as? Int else {return nil}
        guard let name = dictionary["Name"] as? String else {return nil}
        self.cityCode = citiCode
        self.dictrictCode = districtCode
        self.name = name
    }
}
