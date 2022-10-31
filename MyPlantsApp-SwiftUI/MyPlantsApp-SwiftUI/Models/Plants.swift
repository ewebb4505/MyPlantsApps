//
//  Plants.swift
//  MyPlantsApp-SwiftUI
//
//  Created by Evan Webb on 10/30/22.
//

import Foundation

struct Plants {
    var plants: [Plant]
    
    public func isEmpty() -> Bool {
        return plants.count == 0 
    }
    
    mutating public func addPlant(_ plant: Plant) {
        plants.append(plant)
    }
}
