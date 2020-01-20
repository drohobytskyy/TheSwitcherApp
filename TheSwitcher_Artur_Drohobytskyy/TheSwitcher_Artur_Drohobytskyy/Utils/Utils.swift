//
//  Utils.swift
//  TheSwitcher_Artur_Drohobytskyy
//
//  Created by @rtur drohobytskyy on 20/01/2020.
//  Copyright © 2020 @rtur drohobytskyy. All rights reserved.
//

class Utils {
    
    static let shared: Utils = Utils()
    
    static let primaryColor: Int = 0x668f3d
    static let imageBackgroundColor: Int = 0xd7d8db
    
    func getHomeDivisionsSampleArray() -> [HomeDivision] {
        
        return [HomeDivision(id: 1, divisionName: "Kitchen", isLightOn: false),
                HomeDivision(id: 2, divisionName: "Living room", isLightOn: false),
                HomeDivision(id: 3, divisionName: "Master bedroom", isLightOn: false),
                HomeDivision(id: 4, divisionName: "Guest's bedroom", isLightOn: false)]
    }
}
