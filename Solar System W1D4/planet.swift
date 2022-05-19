//
//  planet.swift
//  Solar System W1D4
//
//  Created by Curt McCune on 5/18/22.
//

import Foundation

class Planet {
    let planetName: String
    let planetImageName: String
    let planetDiameter: Int
    let planetDayLength: Float
    let maxMillionKMsFromSun: Float
    let planetID: Int
    
   
    
    init (planetName: String,planetImageName: String, planetDiameter: Int, planetDayLength: Float, maxMillionKMsFromSun: Float, planetID: Int) {
        self.planetName = planetName
        self.planetImageName = planetImageName
        self.planetDiameter = planetDiameter
        self.planetDayLength = planetDayLength
        self.maxMillionKMsFromSun = maxMillionKMsFromSun
        self.planetID = planetID
    }
}
