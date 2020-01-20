//
//  HomeDivision.swift
//  TheSwitcher_Artur_Drohobytskyy
//
//  Created by @rtur drohobytskyy on 20/01/2020.
//  Copyright © 2020 @rtur drohobytskyy. All rights reserved.
//

class HomeDivision {
    
    var id: Int?
    var divisionName: String?
    var isLightOn: Bool?
    
    init(id: Int, divisionName: String, isLightOn: Bool) {
        self.id = id
        self.divisionName = divisionName
        self.isLightOn = isLightOn
    }
}
